vim.g.mapleader = " "

-- Define a variable to track the NvimTree state
vim.g.nvim_tree_toggle = 0

-- Function to toggle NvimTreeOpen and Close
function ToggleNvimTree()
    if vim.g.nvim_tree_toggle == 1 then
        vim.cmd(':NvimTreeClose')
        vim.g.nvim_tree_toggle = 0
    else
        vim.cmd(':NvimTreeOpen')
        vim.g.nvim_tree_toggle = 1
    end
end

-- Remap <C-n> to toggle NvimTreeOpen and Close
vim.api.nvim_set_keymap('n', '<leader>pv', '<Cmd>lua ToggleNvimTree()<CR>', { noremap = true, silent = true })
