local config_path = vim.fn.stdpath("config")
package.path = package.path .. ";" .. config_path .. "/?.lua"

require("plugins.init")
require("options")
require("lsp")
