vim.g.mapleader = " "

local map = vim.keymap.set



map("x", "<leader>p", '"_dP', { desc = "Do not cut on paste" })
map({ "n", "v" }, "<leader>d", '"_d', { desc = "Do not cut on delete" })
map({ "n", "v" }, "<leader>D", '"_D', { desc = "Do not cut on delete" })

-- New Line
map("n", "<leader><CR>", 'o<ESC>k')

-- Back and forth
map({'n', 'v'}, 'H', '^', {noremap = true, silent = true})
map({'n', 'v'}, 'L', '$', {noremap = true, silent = true})

-- Prevent collision with tree-sitter if fails
map('n', '<C-t>', '<Nop>', { noremap = true, silent = true })

-- VSCode keymaps
if vim.g.vscode then
    -- VSCode actions
    local code = require('vscode')

    map("v", "<C-i>", function()
        code.with_insert(function()
        end)
    end)

    map("n", "<leader>cr", function()
        code.action('editor.action.rename')
    end, { desc = "Rename Symbol" })

    -- todo: add for copilot
end
