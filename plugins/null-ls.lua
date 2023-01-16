local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  -- b.formatting.prettier.with { filetypes = {"java", "python", "html", "markdown", "css" } }, -- so prettier works only on these filetypes
  b.formatting.prettier,

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  --python
  b.formatting.autopep8,

  -- java
  b.formatting.clang_format,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
