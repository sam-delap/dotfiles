import type { Plugin } from "@opencode-ai/plugin";
import * as path from "path";

export const MyPlugin: Plugin = async ({ project, client, $, directory, worktree }) => {
  // Log initialization to verify plugin is loaded
  console.error("Discord notification plugin initialized for directory: " + directory);
  
  // Discord webhook configuration
  // You can manually update this URL to your Discord webhook
  const DISCORD_WEBHOOK_URL = "https://discord.com/api/webhooks/1437815397847007387/seeSpV366bFSdR-un8EBhsQAAtEi02iatgjkRin9JxGYSp9b4czzKXIOsa1yEUJAbJZM";

  // Function to send webhook notification to Discord
  const sendDiscordNotification = async (message: string): Promise<void> => {
    if (!DISCORD_WEBHOOK_URL) {
      console.error("Discord webhook URL not configured");
      return;
    }

    try {
      const response = await fetch(DISCORD_WEBHOOK_URL, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          content: message,
        }),
      });

      if (!response.ok) {
        console.error(`Failed to send Discord notification: ${response.status} ${response.statusText}`);
      }
    } catch (error) {
      console.error("Error sending Discord notification:", error);
    }
  };

  return {
    event: async ({ event }) => {
      if (event.type === "session.idle") {
        // Format a message for Discord
        const projectName = project?.name || path.basename(directory);
        const timestamp = new Date().toLocaleString();
        const message = `🤖 OpenCode session completed for project: **${projectName}** at ${timestamp}`;
        
        // Send notification to Discord
        await sendDiscordNotification(message);
      }
    },
  }
}
