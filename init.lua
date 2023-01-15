local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
vim.api.nvim_create_autocmd("Filetype", {
	pattern = "java", -- autocmd to start jdtls
	callback = function()
		print("java file autocmd")
		local config = require("custom.plugins.jdtls")
		if config.root_dir and config.root_dir ~= "" then require("jdtls").start_or_attach(config) end
  end,
})
