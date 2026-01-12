-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Primeongen keymap
map("x", "<leader>p", '"_dP', { desc = "Do not cut on paste" })
map({ "n", "v" }, "<leader>d", '"_d', { desc = "Do not cut on delete" })
map({ "n", "v" }, "<leader>D", '"_D', { desc = "Do not cut on delete" })

-- Copy to system clipboard
map({ 'v', 'n' }, '<leader>y', '"+y', opts) -- Copy selected text in visual mode to clipboard
map('n', '<leader>Y', '"+y$', opts)         -- Copy to the end of the line to clipboard in normal mode
map('n', '<leader>yy', '"+yy', opts)        -- Copy the current line to clipboard

-- New Line
map("n", "<leader><CR>", 'o<ESC>cc<ESC>k')

-- Back and forth
map({'n', 'v'}, 'H', '^', {noremap = true, silent = true})
map({'n', 'v'}, 'L', '$', {noremap = true, silent = true})

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
end
