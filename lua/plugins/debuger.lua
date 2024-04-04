return {
    'mfussenegger/nvim-dap',
    config = function ()
        local dap, dapui = require("dap"), require("dapui")
        print("config of the debug or dap is executing")

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end

        vim.keymap.set('n', '<leader>vt', dap.toggle_breakpoint)
        vim.keymap.set('n', '<leader>vc', dap.continue)
    end,
}
