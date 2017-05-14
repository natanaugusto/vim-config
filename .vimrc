"""""""""""""""""""""""""""""""""""""""""""""""""""""""
		"Vundle"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""""""""""""""""""""""""""""""""""""""
		"NERDTree"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" How can I open a NERDTree automatically when vim starts up?
autocmd vimenter * NERDTree
" How can I open a NERDTree automatically when vim starts up if no files were specified?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" How can I open NERDTree automatically when vim starts up on opening a directory?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"Stick this in your vimrc to open NERDTree with Ctrl+n (you can set whatever key you want):
map <C-t> :NERDTreeToggle<CR>
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" How can I change default arrows?
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
Bundle 'jistr/vim-nerdtree-tabs'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
		"PHP"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plugin 'stanangeloff/php.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin '2072/PHP-Indenting-for-VIm'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
		"Javascript"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Enables syntax highlighting for JSDocs.
let g:javascript_plugin_jsdoc = 1
" Enables some additional syntax highlighting for NGDocs. Requires JSDoc plugin to be enabled as well.
let g:javascript_plugin_ngdoc = 1
" Enables syntax highlighting for Flow.
let g:javascript_plugin_flow = 1
" Enables code folding based on our syntax file.
set foldmethod=syntax
" You can customize concealing characters, if your font provides the character
" you want, by defining one or more of the following variables:
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"
" You can enable concealing within VIM with:
set conceallevel=1
" OR if you wish to toggle concealing you may wish to bind a command such as
" the following which will map <LEADER>l (leader is usually the \ key) to
" toggling conceal mode:
map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>
Plugin 'jelera/vim-javascript-syntax'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
		"Pathogen"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

execute pathogen#infect()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Put at the very end of your .vimrc file.
" PHP Comnplete

function! PhpSyntaxOverride()
	hi! def link phpDocTags  phpDefine
	hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
	autocmd!
        autocmd FileType php call PhpSyntaxOverride()
augroup END

" Move the cursor between the tabs
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Open a new tab with Alt+N
nmap <silent> <C-a> :tabnew<CR>

" Save with Ctrl+s
nmap <silent> <C-s> :w<CR>

"Enable the mouse on vim
set mouse:a
