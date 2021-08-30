call plug#begin()
  Plug 'preservim/nerdtree'
  " Дополнение для Git, а также иконки для NERDTree
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'
" Линия статуса
Plug 'itchyny/lightline.vim'
" Темы
Plug 'joshdick/onedark.vim'
Plug 'cocopon/iceberg.vim'

" FuzzyFinder (для быстрого поиска)
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

" В нормальном режиме Ctrl+n вызывает :NERDTree
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggl

let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$']

" Делаем линейку для отображения на какой мы строке и сколько расстояния до
" других строк в **NeoVim**
set relativenumber
" Тема для **NeoVim**
colorscheme onedark
syntax on

" SHORTCUTS
" CTRL-j one line down
" CTRL-k one line up
map <C-j> :m .+1<CR>
map <C-k> :m .-2<CR>

" Switch between tabs
nnoremap <t-Left> :tabprevious<CR>
nnoremap <t-Right> :tabnext<CR>

" Reload Nvim
nnoremap <C-R> :source ~/.config/nvim/init.vim<CR>
