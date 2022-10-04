local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("vvim.lsp.lsp-installer")
require("vvim.lsp.handlers").setup()
require("vvim.lsp.null-ls")
