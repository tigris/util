if has("terminfo")
  set t_Co=16
else
  set t_Co=8
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'slim-template/vim-slim'
Bundle 'tomtom/tcomment_vim'
Bundle 'vim-scripts/ZoomWin'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'mileszs/ack.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'elzr/vim-json'
Bundle 'jnwhiteh/vim-golang'
Bundle 'godlygeek/tabular'
Bundle 'derekwyatt/vim-scala'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'patstockwell/vim-monokai-tasty'
Bundle 'JamshedVesuna/vim-markdown-preview'

function GitBlame() range
  execute ":!git annotate " . shellescape(simplify(expand("%")), 1) . " | head -" . a:lastline . " | tail -" . (a:lastline - a:firstline + 1)
endfunction

function TogglePaste()
  if (&paste)
    set nopaste
  else
    set paste
  endif
  return ''
  echo ''
endfunction

function ToggleSyntax()
  if (has("syntax_items"))
    syntax off
  else
    syntax on
  endif
  return ''
  echo ''
endfunction

function ToggleBackground()
  if (&background=="dark")
    set background=light
  else
    set background=dark
  endif
  return ''
  echo ''
endfunction

" function to map tab to be ctrl-p if completing a word, and two spaces if not
function InsertTabWrapper()
  let col = col('.') - 1
  if (!col || getline('.')[col - 1] !~ '\k')
    if (&tabstop == 4)
        return "	"
    elseif (&tabstop == 2)
        return "  "
    else
      return "    "
    endif
  else
    return "\<c-p>"
  endif
endfunction

" function to set line numbers on and off
function ToggleLineNumbers()
  if (&number)
    set nonumber
  else
    set number
  endif
  return ''
  echo ''
endfunction

function ToggleShowSpecialChars()
  if (&list)
    set nolist
    set noexpandtab
  else
    set list
    set expandtab
  endif
  return ''
  echo ''
endfunction

function ToggleNerdTree()
  if (exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1)
    NERDTreeToggle
  else
    NERDTreeFind
  end
endfunction

filetype plugin indent on

set list
set shiftwidth=2
set tabstop=2
set expandtab
set ignorecase
set hlsearch
set formatoptions=crqtl
set listchars=tab:>.,trail:_
set autoindent
set textwidth=80
set showmode
set ruler
set viminfo=%,'50,\"1000,:100,/100,n~/.viminfo
set backspace=indent,eol,start
set laststatus=1
set nobackup
set history=100
set showcmd
set showmatch
set incsearch
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set wildmenu
set wildmode=list
set modeline
set number

"autocmd BufNewFile,BufRead,BufEnter *.html.erb set filetype=html
autocmd BufNewFile,BufRead,BufEnter *.thor     set filetype=ruby
autocmd BufRead,BufNewFile          *.scala    set filetype=scala
autocmd BufRead,BufNewFile          *.sbt      set filetype=scala
autocmd BufReadPost                 *          if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

inoremap <C-s>   <esc>:w<cr>a
inoremap <C-q>   <esc>:q<cr>
inoremap <C-x>   <esc>:wq<cr>
inoremap <tab>   <c-r>=InsertTabWrapper()<cr>
inoremap <C-n>   <esc>:call ToggleNerdTree()<cr>
nnoremap <C-n>   :call ToggleNerdTree()<cr>
nnoremap ,2      :call TogglePaste()<cr>
nnoremap ,4      :call ToggleFoldmethod()<cr>
nnoremap ,5      :call ToggleBackground()<cr>
nnoremap ,6      :call ToggleHLSearch()<cr>
nnoremap ,7      :call ToggleSyntax()<cr>
nnoremap gb      :call GitBlame()<cr>
nnoremap gd      :!git diff %<cr>
nnoremap ,s      :!ispell %<cr>
nnoremap ,c      :!open -a "Google Chrome.app" %<CR>
nnoremap ,r      :!%<cr>
nnoremap ,j      mj:0,$!jq .<cr>'j
nnoremap ,h      mh:0,$!tidy -iqn --wrap 0 --show-warnings no<cr>'h
nnoremap ,x      mx:0,$!xmllint --format -<cr>'x
nnoremap ,n      :call ToggleLineNumbers()<cr>
nnoremap ,t      :Tabularize/\(:.*\)\@<!:\zs /l0<cr>
nnoremap ,T      :call ToggleShowSpecialChars()<cr>
nnoremap <C-s>   :w<cr>
nnoremap <C-a>   ggVG
nnoremap <C-q>   :q<cr>
nnoremap <C-x>   :wq<cr>
nnoremap ,p      "+p
nnoremap ,y      "+y
nnoremap ,f      :CtrlP<cr>
nnoremap <space> <C-w>
vnoremap p       <esc>:let current_reg = @"<cr>gvdi<c-r>=current_reg<cr><esc>

set encoding=utf-8
set title

let g:EasyMotion_leader_key = '\'
let g:vim_json_syntax_conceal = 0
let vim_markdown_preview_github=1
let vim_markdown_preview_toggle=1
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_hotkey=',m'

syntax enable
let g:solarized_termcolors = 16
let g:solarized_termtrans  = 0
let g:solarized_degrade    = 0
let g:solarized_bold       = 1
let g:solarized_underline  = 1
let g:solarized_italic     = 1
let g:solarized_contrast   = "normal"
let g:solarized_visibility = "normal"
" colorscheme solarized
colorscheme vim-monokai-tasty
set background=dark
hi Normal guibg=black guifg=green
