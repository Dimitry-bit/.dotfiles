local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
    return
end

local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local FORMATTING = methods.internal.FORMATTING
local RANGE_FORMATTING = methods.internal.RANGE_FORMATTING

h.make_builtin({
    name = "clang_format",
    meta = {
        url = "https://www.kernel.org/doc/html/latest/process/clang-format.html",
        description = "Tool to format C/C++/… code according to a set of rules and heuristics.",
    },
    method = { FORMATTING, RANGE_FORMATTING },
    filetypes = { "c", "cpp", "cs", "java", "cuda" },
    generator_opts = {
        command = "clang-format --style=file:~/.config/nvim/lua/vvim/lsp/null-ls-styles/.clang-format",
        args = h.range_formatting_args_factory(
            { "-assume-filename", "$FILENAME" },
            "--offset",
            "--length",
            { use_length = true }
        ),
        to_stdin = true,
    },
    factory = h.formatter_factory,
})

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

-- https://github.com/prettier-solidity/prettier-plugin-solidity
null_ls.setup {
    debug = false,
    sources = {
        formatting.clang_format,
    },
}
