if has("terminfo")
  set t_Co=16
else
  set t_Co=8
endif

function GitBlame() range
  execute ":!git annotate " . shellescape(simplify(expand("%")), 1) . " | head -" . a:lastline . " | tail -" . (a:lastline - a:firstline + 1)
endfunction

" toggle the paste option
function TogglePaste()
  if (&paste)
    set nopaste
  else
    set paste
  endif
  return ''
  echo ''
endfunction

" toggle the foldmethod option between manual and indent
" NB: it will forget which folds you have open if you toggle it off then on
function ToggleFoldmethod()
  if (&foldmethod=="manual")
    set foldmethod=indent
    1,$foldclose!
  else
    set foldmethod=manual
    1,$foldopen!
  endif
  return ''
  echo ''
endfunction

" toggle syntax highlighting
function ToggleSyntax()
  if (has("syntax_items"))
    syntax off
  else
    syntax on
  endif
  return ''
  echo ''
endfunction

" toggle the syntax coloring
function ToggleBackground()
  if (&background=="dark")
    set background=light
  else
    set background=dark
  endif
  return ''
  echo ''
endfunction

" toggle the hlsearch thing for when you can't find your cursor
function ToggleHLSearch()
  if (&hlsearch)
    set nohlsearch
  else
    set hlsearch
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
  echo ''
  return ''
endfunction

" function to set coding style for perl
function ToggleCodingStyle()
  if (&tabstop == 4)
    set tabstop=8
    set expandtab
  else
    set tabstop=4
    set noexpandtab
  endif
  echo ''
  return ''
endfunction

" function to find the start of the next perl sub function
function FindSub(flags)
  let n = search('^sub \w\+\s*\(([\$@%]*)\)\=\s*{\s*$', a:flags)
  if (n > 0)
    normal cursor(n, 1)
  endif
  echo ''
  return ''
endfunction

filetype plugin on

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

autocmd BufNewFile,BufRead,BufEnter *.tmpl set filetype=html
autocmd BufNewFile,BufRead,BufEnter *.inc set filetype=html
autocmd BufNewFile,BufRead,BufEnter *.chtml set filetype=html
autocmd BufNewFile,BufRead,BufEnter *.schtml set filetype=html
autocmd BufNewFile,BufRead,BufEnter *.html.erb set filetype=html

autocmd BufNewFile,BufRead,BufEnter *funcs-rsearch/* set filetype=perl
autocmd BufNewFile,BufRead,BufEnter */t/*.t set filetype=perl

autocmd BufNewFile,BufRead,BufEnter *.thor set filetype=ruby

" escape is too far from home keys
imap ;; <esc>

map ,2 :call TogglePaste()<cr>
map ,4 :call ToggleFoldmethod()<cr>
map ,5 :call ToggleBackground()<cr>
map ,6 :call ToggleHLSearch()<cr>
map ,7 :call ToggleSyntax()<cr>
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
map ,a :call GitBlame()<cr>
map ,s :!ispell %<cr>
map ,tc :!perl -cT %<cr>
map ,tp :!perl -T %<cr>
map ,c :!perl -c -I . -I ./lib -I ../lib %<cr>
map ,p :!perl -I . -I ./lib -I ../lib %<cr>
map ,r :!ruby %<cr>
map ,n :call ToggleLineNumbers()<cr>
map [[ :call FindSub("Wb")<cr>
map ]] :call FindSub("W")<cr>
vnoremap p <esc>:let current_reg = @"<cr>gvdi<c-r>=current_reg<cr><esc>
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

set encoding=utf-8
set title

syntax enable
let g:solarized_termcolors = 16
let g:solarized_termtrans  = 0
let g:solarized_degrade    = 0
let g:solarized_bold       = 1
let g:solarized_underline  = 1
let g:solarized_italic     = 1
let g:solarized_contrast   = "normal"
let g:solarized_visibility = "normal"
colorscheme solarized
set background=dark
