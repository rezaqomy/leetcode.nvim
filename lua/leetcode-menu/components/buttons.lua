local Group = require("leetcode-ui.group")
local log = require("leetcode.logger")

---@class lc-menu.Buttons : lc-ui.Group
local Buttons = Group:extend("LeetButtons")

function Buttons:init(buttons, opts)
    opts = vim.tbl_deep_extend("force", {
        margin = {
            top = 1,
            bot = 2,
        },
        spacing = 1,
        position = "center",
    }, opts or {})

    Buttons.super.init(self, opts)

    for _, btn in ipairs(buttons) do
        self:insert(btn)
    end
end

---@type fun(buttons: lc-ui.Button[], opts?: table): lc-menu.Buttons
local LeetButtons = Buttons

return LeetButtons
