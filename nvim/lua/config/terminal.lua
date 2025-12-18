-- Terminal toggle function
local term_buf = nil
local term_win = nil

local function toggle_terminal()
	-- If terminal window is visible, hide it
	if term_win and vim.api.nvim_win_is_valid(term_win) then
		vim.api.nvim_win_hide(term_win)
		term_win = nil
		return
	end

	-- If terminal buffer doesn't exist, create it
	if not term_buf or not vim.api.nvim_buf_is_valid(term_buf) then
		-- Create a new buffer
		term_buf = vim.api.nvim_create_buf(false, true)

		-- Start terminal in the current working directory
		vim.api.nvim_buf_call(term_buf, function()
			vim.fn.termopen(vim.o.shell)
		end)
	end

	-- Open split at bottom
	vim.cmd('botright split')
	term_win = vim.api.nvim_get_current_win()

	-- Set window height (adjust as needed)
	vim.api.nvim_win_set_height(term_win, 15)

	-- Switch to terminal buffer
	vim.api.nvim_win_set_buf(term_win, term_buf)

	-- Enter insert mode automatically
	vim.cmd('startinsert')
end

vim.keymap.set({ 'n', 't' }, '<C-j>', toggle_terminal, { desc = 'Toggle terminal' })
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
