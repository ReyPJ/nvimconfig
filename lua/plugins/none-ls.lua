return {
  "/nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    ---@diagnostic disable-next-line: redundant-value
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black,
        null_ls.builtins.diagnostics.flake8,
        null_ls.builtins.formatting.djlint,
        null_ls.builtins.diagnostics.djlint,
        null_ls.builtins.formatting.rustywind,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}