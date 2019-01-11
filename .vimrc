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

    imap ,,    <esc>
    imap <c-s> <c-o><c-s>
    imap <c-s> <esc><c-s>
    imap <c-q> <esc><c-q>
    imap <c-x> <esc><c-x>
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
    imap <c-n> <esc><c-n>
     map <c-n> :call ToggleNerdTree()<cr>
     map ,2    :call TogglePaste()<cr>
     map ,4    :call ToggleFoldmethod()<cr>
     map ,5    :call ToggleBackground()<cr>
     map ,6    :call ToggleHLSearch()<cr>
     map ,7    :call ToggleSyntax()<cr>
     map gb    :call GitBlame()<cr>
     map gd    :!git diff %<cr>
     map ,s    :!ispell %<cr>
     map ,r    :!%<cr>
     map ,j    mj:0,$!jq .<cr>'j
     map ,x    mx:0,$!xmllint --format -<cr>'x
     map ,n    :call ToggleLineNumbers()<cr>
     map ,t    :Tabularize/\(:.*\)\@<!:\zs /l0<cr>
     map ,T    :call ToggleShowSpecialChars()<cr>
     map <c-s> :w<cr>
     map <c-a> ggVG
     map <c-q> :q<cr>
     map <c-x> :x<cr>
     map ,p    "+p
     map ,y    "+y
     map ,f    :CtrlP<cr>
     map <space> <c-w>
vnoremap p     <esc>:let current_reg = @"<cr>gvdi<c-r>=current_reg<cr><esc>

set encoding=utf-8
set title

let g:EasyMotion_leader_key = '\'
let g:vim_json_syntax_conceal = 0

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
