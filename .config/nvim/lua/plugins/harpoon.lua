local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

return {
    {
        "theprimeagen/harpoon",
        keys = {
            { "<leader>a", mark.add_file, desc = "Add Harpoon file" },
            { "<C-e>", ui.toggle_quick_menu, desc = "Open Harpoon menu" },
            { "<C-h>", function() ui.nav_file(1) end },
            { "<C-t>", function() ui.nav_file(2) end },
            { "<C-n>", function() ui.nav_file(3) end },
            { "<C-s>", function() ui.nav_file(4) end },
        }
    }
}
