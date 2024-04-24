vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

vim.keymap.set('n', '<leader>cd', function()
    -- Get the current working directory (absolute path)
    local cwd = vim.fn.getcwd()

    -- Copy the directory path to the clipboard
    vim.fn.setreg('+', cwd)

    -- Display a message indicating the directory path has been copied
    vim.api.nvim_echo({{'Directory path copied to clipboard: ' .. cwd, 'Normal'}}, true, {})
end, { noremap = true, silent = true })
