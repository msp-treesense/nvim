require("mason-null-ls").setup({
  ensure_installed = {
    -- Opt to list sources here, when available in mason.
  },
  automatic_installation = false,
  automatic_setup = true, -- Recommended, but optional
  handlers = {},
})

-- require("null-ls").setup()
local null_ls = require("null-ls")

-- register any number of sources simultaneously
local sources = {
  null_ls.builtins.formatting.prettier,
  -- null_ls.builtins.formatting.black,
  null_ls.builtins.formatting.black.with({
    --miliseconds
    timeout = 1000000000000000000,
  }),
  null_ls.builtins.formatting.isort,
  -- null_ls.builtins.diagnostics.pylint,
  null_ls.builtins.diagnostics.pylint.with({
    --miliseconds
    timeout = 100000000000000000000000000,
  }),
  null_ls.builtins.diagnostics.mypy,
  -- null_ls.builtins.diagnostics.write_good,
  null_ls.builtins.code_actions.gitsigns,
  null_ls.builtins.formatting.astyle,
}

null_ls.setup({ sources = sources})
-- null_ls.setup.timeout_ms=50000
-- require "mason-null-ls".setup_handlers() -- If `automatic_setup` is true.
  -- null_ls.builtins.formatting.black.with({
  --   --miliseconds
  --   timeout = 1000000000,
  -- }),
  -- null_ls.builtins.formatting.isort.with({
  --   --miliseconds
  --   timeout = 1000000000,
  -- }),
  -- null_ls.builtins.diagnostics.pylint.with({
  --   --miliseconds
  --   timeout = 100000000,
  -- }),
  -- null_ls.builtins.diagnostics.mypy.with({
  --   --miliseconds
  --   timeout = 100000000,
