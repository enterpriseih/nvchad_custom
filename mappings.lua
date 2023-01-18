local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}


M.aerial = {
  n = {
    ["<leader>ol"] = { "<cmd> AerialToggle <CR>", "toggle outline" }
  }
}

-- more keybinds!

return M
