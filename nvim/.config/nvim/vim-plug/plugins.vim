" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Sudo inside files
    Plug 'lambdalisue/suda.vim'
    " Autocompletion && Code analyser.
    " Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Vim-Commentary
    Plug 'tpope/vim-commentary'

    " Line highlight for git.
    Plug 'airblade/vim-gitgutter'
    " Icons for file extensions.
    Plug 'ryanoasis/vim-devicons'

    " Gruvbox theme.
    Plug 'morhetz/gruvbox'
    " Nord theme.
    Plug 'arcticicestudio/nord-vim'   
    " OneDark theme.
    Plug 'navarasu/onedark.nvim'

    " NerdTree
    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    " Homepage
    Plug 'mhinz/vim-startify'

    " Telescope
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " Floaterm
    Plug 'voldikss/vim-floaterm'

    " Statusbar
    " Plug 'vim-airline/vim-airline'
    Plug 'nvim-lualine/lualine.nvim'
    " If you want to have icons in your statusline choose one of these
    Plug 'kyazdani42/nvim-web-devicons'

call plug#end()
