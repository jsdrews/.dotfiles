return {
	"vim-test/vim-test",
	dependencies = {
		"preservim/vimux",
	},
	-- vim.keymap.set("n", "<leader>t", ":TestNearest<CR>"),
	vim.keymap.set("n", "<leader>T", ":TestNearest<CR>", { desc = "Run [T]ests for this file" }),
	-- vim.keymap.set("n", "<leader>T", ":TestFile<CR>"),
	vim.keymap.set("n", "<leader>a", ":TestSuite<CR>", { desc = "Run [A]ll the tests" }),
	-- vim.keymap.set("n", "<leader>l", ":TestLast<CR>"),
	-- vim.keymap.set("n", "<leader>g", ":TestVisit<CR>"),
	vim.cmd("let test#strategy = 'vimux'"),
}
