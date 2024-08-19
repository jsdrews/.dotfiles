local lsp_zero = require('lsp-zero')

local lsp_attach = function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end

lsp_zero.extend_lspconfig({
  sign_text = true,
  lsp_attach = lsp_attach,
})

-- LSP install
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
	'lua_ls',
	'tsserver',
	'rust_analyzer',
	'gopls',
	'pyright',
    'clangd',
  },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  }
})

-- Auto complete
local cmp = require('cmp')
local cmp_format = require('lsp-zero').cmp_format({details = true})
cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
    {name = 'buffer'},
  },
  --- (Optional) Show source name in completion menu
  formatting = cmp_format,
})

-- Formatting
require("conform").setup({
  formatters_by_ft = {
    -- lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    python = { "isort", "black" },
    -- You can customize some of the format options for the filetype (:help conform.format)
    rust = { "rustfmt", lsp_format = "fallback" },
    -- Conform will run the first available formatter
    javascript = { "prettierd", "prettier", stop_after_first = true },
    go = { "gofmt", "goimports-reviser" },
    cpp = { "clang-format" },
  },
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})

