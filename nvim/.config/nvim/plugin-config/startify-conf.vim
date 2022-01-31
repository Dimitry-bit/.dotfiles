let g:startify_bookmarks = [
      \ {'z': '~/.zshrc' },
      \ {'v': '~/.config/nvim/init.vim'},
      \ {'b': '~/.config/nvim/keybindings.md'},
      \ ]

let g:startify_lists = [
      \ {'header': [' Bookmarks'],        'type': 'bookmarks' },
      \ {'header': [' MRU'],              'type': 'files' },
      \ {'header': [' MRU '.getcwd()],    'type': 'dir' },
      \ ]

let g:startify_fortune_use_unicode = 1
nmap <c-n> :Startify<cr>
