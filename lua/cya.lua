local M = {}
local utils = require("cya.utils")

M.close = function()
    local bufTable = utils.bufCount()
    if bufTable.normal <= 1 then
        vim.api.nvim_exec([[:q]], true)
    else
        vim.api.nvim_exec([[:bd]], true)
    end
end

return M
