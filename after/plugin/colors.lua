local color
local inputValue

function SwitchTheme(num)
	local colorScheme;
	local parser = tonumber(num)
	if parser == 1 then
		colorScheme = color or "oxocarbon"
		require('lualine').setup{
			options ={
				theme = 'moonfly'
			}
		}
	elseif parser == 2 then
		require('lualine').setup{
			options ={
				theme = 'poimandres'
			}
		}
		colorScheme = color or "poimandres"
	else
		print("Canceling...")
	end
	vim.cmd.colorscheme(colorScheme)
end

function ShowThemes()
	print("*****Themes*****")
	print("1 - Nyoom Oxocarbon")
	print("2 - Poimandres")
	print("0 - Cancel")

 inputValue = vim.fn.input("Select a Color > ")
 SwitchTheme(inputValue)
end

vim.keymap.set("n", "<leader>th", ':lua ShowThemes()<Return>')
