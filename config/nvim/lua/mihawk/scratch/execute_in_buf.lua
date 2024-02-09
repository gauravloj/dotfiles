local bufnr = 32;
local command = "python3 somecode.py"

local attach_on_python = function(bufnr, command)
  vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup("execute_in_buf", { clear = true }),
    pattern = "somecode.py",
    callback = function()
      local append_data = function(_, data, _)
        print(vim.inspect(data))
        for _, line in ipairs(data) do
          vim.api.nvim_buf_set_lines(bufnr, -1, -1, false, { line })
        end
      end
      vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "Python output: " })
      vim.fn.jobstart(command, {
        stdout_buffered = true,
        on_stdout = append_data,
        on_stderr = append_data,
      })
    end,
  })
end


vim.api.nvim_create_user_command("ExecuteInBuf", function(args)
  attach_on_python(bufnr, command)
end, {})

-- attach_on_python(bufnr, command)
