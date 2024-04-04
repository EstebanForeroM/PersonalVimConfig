local dap, dapui = require("dap"), require("dapui")
print("I am working");
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

dap.adapters.lldb = {
  type = "executable",
  command = "/home/esteban/.local/share/nvim/mason/packages/codelldb/codelldb",
  name = "lldb",
}

dap.configurations.rust = {
  {
    name = "hello-world",
    type = "lldb",
    request = "launch",
    program = function()
      return vim.fn.getcwd() .. "/target/debug/hello-world"
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
  },
  {
    name = "hello-dap",
    type = "lldb",
    request = "launch",
    program = function()
      return vim.fn.getcwd() .. "/target/debug/hello-dap"
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
  },
}
