vim.opt.completeopt = { "menuone", "noselect", "popup" }

-- Accept completion with Enter
vim.keymap.set('i', '<CR>', function()
	if vim.fn.pumvisible() == 1 then
		return vim.fn.complete_info()['selected'] ~= -1 and '<C-y>' or '<C-e><CR>'
	else
		return '<CR>'
	end
end, { expr = true })

-- Accept completion with Tab (optional)
vim.keymap.set('i', '<Tab>', function()
	if vim.fn.pumvisible() == 1 then
		return '<C-n>'
	else
		return '<Tab>'
	end
end, { expr = true })

-- Shift-Tab to go backwards
vim.keymap.set('i', '<S-Tab>', function()
	if vim.fn.pumvisible() == 1 then
		return '<C-p>'
	else
		return '<S-Tab>'
	end
end, { expr = true })

-- Auto-trigger completion popup
vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		if client then
			-- Trigger completion on typing
			vim.api.nvim_create_autocmd('InsertCharPre', {
				buffer = args.buf,
				callback = function()
					local char = vim.v.char
					-- Trigger on letters, dots, and colons
					if char:match('[%w%.]') then
						vim.schedule(function()
							if vim.fn.pumvisible() == 0 then
								vim.api.nvim_feedkeys(
									vim.api.nvim_replace_termcodes('<C-x><C-o>', true,
										false,
										true), 'n', false)
							end
						end)
					end
				end,
			})
		end
	end,
})
