" Unmap arrow keys
no <down> ddp 
no <left> :NERDTreeToggle<CR> 
no <right> <Nop>
no <up> ddkP 

ino <down> <Nop>
ino <left> <ESC>:NERDTreeToggle<CR>
ino <right> <Nop>
ino <up> <Nop>

vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

" Center shit out
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

" Create line up/down while in normal mode
nmap g<C-O> o<ESC>k
nmap gO O<ESC>j

" LeaderZ
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
"imap <leader>{ {}<ESC>i

" TabZZZ
map <C-Tab> :tabnext<CR>
map <C-S-Tab> :tabprevious<CR>
nmap <C-Tab> :tabnext<CR>
nmap <C-S-Tab> :tabprevious<CR>
imap <C-Tab> <ESC>:tabnext<CR>
imap <C-S-Tab> <ESC>:tabprevious<CR>
noremap <F7> :set expandtab!<CR>

" cool stuff... or not
map <C-s> s<ESC>l
nmap <C-s> s<ESC>l
map <C-d> d1l
nmap <C-d> d1l
"imap <C-d> <ESC>d1lli
" this is a test line, test against this line, as this is indeed for testing

" abbrv

" curZor
set cul
set nu

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
