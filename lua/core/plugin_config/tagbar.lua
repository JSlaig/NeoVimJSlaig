-- Changed into UniversalCtags because it is available in windows and it has overall more support to several languages and rolling releases
vim.g.tagbar_ctags_bin = 'C:\\Users\\jsalinero\\AppData\\Local\\microsoft\\winget\\packages\\UniversalCtags.Ctags_Microsoft.Winget.Source_8wekyb3d8bbwe\\ctags.exe'

-- Toggle Tagbar with <ctrl + b> key
vim.keymap.set('n', '<leader>b', ':TagbarToggle<CR>', {})

