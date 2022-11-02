local dap = require('dap')

dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    command = 'D:\\Dev\\res\\vscode-lldb\\adapter\\codelldb.exe',
    args = {"--port", "${port}"},

    detached = false,
  }
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    runInTerminal = true,
  },
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
