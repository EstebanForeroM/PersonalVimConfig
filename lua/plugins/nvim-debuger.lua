return {
    "mfussenegger/nvim-dap",
    config = function()
        local dap = require("dap");

        vim.keymap.set('n', '<leader>dt', dap.toggle_breakpoint, {})
        vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
        vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
        vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
        vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
    end
}
