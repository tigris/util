if has("terminfo")
  set t_Co=16
"  set t_Sf=<esc>[3%p1%dm
"  set t_Sb=<esc>[4%p1%dm
"else
"  set t_Co=8
"  set t_Sf=<esc>[3%dm
"  set t_Sb=<esc>[4%dm
endif

" set up HTML specific things
function SetSpacings()
  if (&filetype == "perl")
    set shiftwidth=4
    set tabstop=4
  elseif (&filetype == "html")
    set shiftwidth=2
    set tabstop=2
  elseif (&filetype == "vim")
    set shiftwidth=2
    set tabstop=2
  elseif (&filetype == "ruby")
    set shiftwidth=2
    set tabstop=2
  endif
endfunction

function SetRSearchShit()
  ab dumper use XXX; XXX::DUMPER();<esc>hi
endfunction

function SetMappings()
  if (&filetype == "perl")
    imap ,s $
    imap ,a @
    imap ,h %
    ab dumper use Data::Dumper; warn Dumper();<esc>hi
  endif
endfunction

function SetPerlMappings()
  set filetype=perl
  call SetMappings()
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

syntax on
filetype plugin on

"set nocompatible
set list
set shiftwidth=4
set tabstop=4
set expandtab
set ignorecase
set hlsearch
set formatoptions=crqt
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
"set term=xterm-color
colorscheme default
set background=dark

autocmd BufNewFile,BufRead,BufEnter *.tmpl set filetype=html
autocmd BufNewFile,BufRead,BufEnter *.inc set filetype=html
autocmd BufNewFile,BufRead,BufEnter *.chtml set filetype=html
autocmd BufNewFile,BufRead,BufEnter *.schtml set filetype=html
autocmd BufNewFile,BufRead,BufEnter *.erb set filetype=html

autocmd BufNewFile,BufRead,BufEnter *funcs-rsearch/* set filetype=perl
autocmd BufNewFile,BufRead,BufEnter */t/*.t set filetype=perl

autocmd BufNewFile,BufRead,BufEnter * call SetSpacings()
autocmd BufNewFile,BufRead,BufEnter * call SetMappings()

autocmd BufNewFile,BufRead,BufEnter *funcs-rsearch/* call SetRSearchShit()

" escape is too far from home keys
imap ;; <esc>

map ,1 :call SetPerlMappings()<cr>
map ,2 :call TogglePaste()<cr>
map ,3 :call ToggleCodingStyle()<cr>
map ,4 :call ToggleFoldmethod()<cr>
map ,5 :call ToggleBackground()<cr>
map ,6 :call ToggleHLSearch()<cr>
map ,7 :call ToggleSyntax()<cr>
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
map ,s :!ispell %<cr>
map ,tc :!perl -cT %<cr>
map ,tp :!perl -T %<cr>
map ,c :!perl -c -I . -I ./lib -I ../lib %<cr>
map ,p :!perl -I . -I ./lib -I ../lib %<cr>
map ,mtt :!mysql --defaults-file=~/toolbox/mysql/configs/devdb.cnf -t Toolbox < %<cr>
map ,mte :!mysql --defaults-file=~/toolbox/mysql/configs/devdb.cnf -E Toolbox < %<cr>
map ,mrt :!mysql --defaults-file=~/toolbox/mysql/configs/devdb.cnf -t RealEstate < %<cr>
map ,mre :!mysql --defaults-file=~/toolbox/mysql/configs/devdb.cnf -E RealEstate < %<cr>
map ,mpt :!mysql --defaults-file=~/toolbox/mysql/configs/devdb.cnf -t PSeekerTest < %<cr>
map ,mpe :!mysql --defaults-file=~/toolbox/mysql/configs/devdb.cnf -E PSeekerTest < %<cr>
map ,mRt :!mysql --defaults-file=~/toolbox/mysql/configs/readb.cnf -t RealEstate < %<cr>
map ,mRe :!mysql --defaults-file=~/toolbox/mysql/configs/readb.cnf -E RealEstate < %<cr>
map ,mPt :!mysql --defaults-file=~/toolbox/mysql/configs/pseekerdb.cnf -t PSeeker < %<cr>
map ,mPe :!mysql --defaults-file=~/toolbox/mysql/configs/pseekerdb.cnf -E PSeeker < %<cr>
map ,n :call ToggleLineNumbers()<cr>
map [[ :call FindSub("Wb")<cr>
map ]] :call FindSub("W")<cr>
vnoremap p <esc>:let current_reg = @"<cr>gvdi<c-r>=current_reg<cr><esc>
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

set encoding=utf-8
