local M = {
  "nvimtools/none-ls.nvim",
}

function M.config()
  local null_ls = require "null-ls"

  local formatting = null_ls.builtins.formatting
  local diagnostics = null_ls.builtins.diagnostics

  null_ls.setup {
    sources = {
      formatting.stylua,
      null_ls.builtins.code_actions.shellcheck,   -- https://www.shellcheck.net/
      diagnostics.codespell,     -- https://github.com/codespell-project/codespell
      diagnostics.golangci_lint, -- https://github.com/golangci/golangci-lint (~/.golangci.yml)
      diagnostics.staticcheck, -- https://github.com/dominikh/go-tools
      diagnostics.write_good,  -- https://github.com/btford/write-good
      diagnostics.zsh,         -- https://www.zsh.org/ (uses zsh command's -n option to evaluate code, not execute it)
      formatting.black,        -- https://github.com/psf/black
      formatting.autopep8,     -- https://github.com/hhatto/autopep8
      formatting.fixjson,           -- https://github.com/rhysd/fixjson
      formatting.gci,
      formatting.goimports_reviser, -- https://pkg.go.dev/github.com/incu6us/goimports-reviser
      formatting.isort,             -- https://github.com/PyCQA/isort
      formatting.markdown_toc,      -- https://github.com/jonschlinkert/markdown-toc
      formatting.mdformat,          -- https://github.com/executablebooks/mdformat
      formatting.ocdc,              -- https://github.com/mdwint/ocdc
      formatting.shfmt,             -- https://github.com/mvdan/sh
      formatting.taplo,             -- https://taplo.tamasfe.dev/
      formatting.terraform_fmt,     -- https://www.terraform.io/docs/cli/commands/fmt.html
      formatting.yamlfmt            -- https://github.com/google/yamlfmt
    },
  }
end

return M
