"Michelle's vimrc

"---------Ideas/Want to do----------------------------------------"

"----- Quick Inserting --------------------------------------"
"colors
set t_Co=256
colorscheme badwolf


"-----Java------------------------------------------------"


"System.out.println
iab <silent> spln System.out.println(" "); <left><left><left><left>

"System.out.print
iab <silent> spnln System.out.print(" "); <left><left><left><left>

"----Logic Gate HDL File Stuff-------------------------------------
iab <silent> or Or(a= , b= , out= ); 
"want to figure out how to use for loops to make it go left a certain amount of times without
"actually typing all of that
iab <silent> andg And(a= , b= , out= );
iab <silent> and16g And16(a=[16] , b=[16] , out=[16] );
iab <silent> and4g And4(a=, b=, c=, d=, out= );

iab <silent> notg Not(in= , out= );
iab <silent> not16g Not16(in=[16] , out=[16] );

iab <silent> nandg Nand(a= , b= , out= );

iab <silent> org Or(a= , b= , out= );
iab <silent> or16g Or16(a=[16] , b=[16] , out=[16] );

iab <silent> xorg Xor(a= , b= , out= );

iab <silent> muxg Mux(a= , b= , sel= , out= );
iab <silent> mux16g Mux16(a=a[0..15], b=b[0..15], sel= , out= );  
iab <silent> dmuxg DMux(in= , sel= ,  a = , b= );

iab <silent> registerg Register(in=[16], load= , out=[16]);




"----C++--------------------------------------------------"
"The best Cout
iab <silent> Cout cout << "" << endl;<left><left><left><left><left><left><left><left><left><left>

"quick C++ heading stuff
iab <silent> cppt <CR>#include<iostream><CR><CR>using namespace std;<CR><CR>int main(int argc, char *argv[]) {<CR><CR> !cursor!<CR>}<ESC>?!cursor!<CR>C 

"This is just to print an endline
iab <silent> cte cout << endl;<CR>

"This is printing the index
iab <silent> iis cout << "i is = " << i << endl;<CR>
   
"This is to print a debugging statement
iab <silent> db //TESTING :D What is even going on?<CR>cout << "Can I get here?" << endl;<CR>//END TESTING<CR>
"---------------------------------------------------------"

"----- Re-Mapping Keys --------------------------------------"

"make cursor use display lines instead of real lines
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

"Remapping Escape Key so I can just mash the j and k keys
inoremap jk <ESC>
inoremap kj <ESC>

"trying to make a shortcut to save files
nnoremap vn :w<CR>
nnoremap nv :w<CR>

"making a thing where I'm in insert mode, then save then in insert
"inoremap <C-S> <ESC>:w<CR>i
"nnoremap <C-S> <ESC>:w<CR>i

"making one for save and quit
nnoremap qw :wq<CR>
nnoremap wq :wq<CR>



	"I found this next one here:http://vim.wikia.com/wiki/Mapping_keys_in_Vim_-_Tutorial_%28Part_2%29
	"this makes sense to me now. When you use @=, proceed with ''s, then end with <CR>
"Adds two comment bars at the beginning of the line, no matter where your cursor is in the line.
nnoremap cm @='^I//<C-V><Esc>'<CR>

"Deletes what should be the two // you added before. Just deletes whatever the first two chars are in the line.
nnoremap cn @='^xx'<CR>

"For block commenting.
nnoremap cb @='0I/*<C-V><Esc>'<CR>
nnoremap ce @='$a*/<C-V><Esc>'<CR>

"I want to use the a key to do the same thing as Shift A
nnoremap a <S-A>

"---------------------------------------------------------"


"----- Technical Stuff --------------------------------------"

"testing a thing. This might need to be in here to make other stuff work?
set nocompatible

"store lots of command line history
set history=1000

"keep tons of undo stuff
set undolevels=1000

"this is me trying to make a backup directory for all of my swp files.
set backupdir=./backupSwpFiles,.,/tmp

"---------------------------------------------------------"


"----- Visual Stuff --------------------------------------"

"scrolling so you can see always?
set scrolloff=5	"5 lines up and down
set sidescrolloff=5 "5lines left and right

"set tabs to be smart
set autoindent

"Tabstop
set tabstop=4

"Need line numbers Line piece
set number

"Pretty colors
syntax on
highlight Comment ctermfg=blue

"Highlight searching stuff
set hlsearch 
set incsearch 

"get rid of highlighted with searching
nnoremap <CR> :noh<CR><CR>

"Use more prompt
set more

"shows what you are typing as a command- awesome
set showcmd
"---------------------------------------------------------"




