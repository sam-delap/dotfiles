import type { Plugin } from "@opencode-ai/plugin";
import * as path from "path";

export const MyPlugin: Plugin = async ({ project, client, $, directory, worktree }) => {
  // Log initialization to verify plugin is loaded
  console.error("Webhook notification plugin initialized for directory: " + directory);
  
  // Webhook configuration
  // You can manually update this URL to your Webhook
  const WEBHOOK_URL = process.env.OPENCODE_WEBHOOK_URL == null ? "YOUR_WEBHOOK_URL_HERE" : process.env.OPENCODE_WEBHOOK_URL // "https://discord.com/api/webhooks/1438325455005548595/MtKcWxGX9Ad8TkZOmfy383veBFfNJCmAxyffcyXc9xkOdyAcMvJWBnWpc7lPweeFy9Cf"

  // Function to send webhook notification to Webhook
  const sendWebhookNotification = async (message: string): Promise<void> => {
    if (!WEBHOOK_URL || WEBHOOK_URL === "YOUR_WEBHOOK_URL_HERE") {
      console.error("Webhook URL not configured");
      return;
    }

    try {
      const response = await fetch(WEBHOOK_URL, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          content: message,
        }),
      });

      if (!response.ok) {
        console.error(`Failed to send Webhook notification: ${response.status} ${response.statusText}`);
      }
    } catch (error) {
      console.error("Error sending Webhook notification:", error);
    }
  };

  return {
    event: async ({ event }) => {
      if (event.type === "session.idle") {
        // Format a message for Webhook
        const projectName = project?.name || path.basename(directory);
        const timestamp = new Date().toLocaleString();
        const message = `🤖 OpenCode session completed for project: **${projectName}** at ${timestamp}`;
        
        // Send notification to Webhook
        await sendWebhookNotification(message);
      }
    },
  }
}
