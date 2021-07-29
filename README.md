# go-ide-vim.conf
my vim conf for golang IDE

## requirements

 vim 8.0 +python3 +lua
 
 iTerm2 (Support true color) 

    brew install macvim
```
     vim --version
VIM - Vi IMproved 8.2 (2019 Dec 12, compiled Apr 01 2021 08:32:44)
macOS version - x86_64
包含补丁: 1-2681
编译者 Homebrew
巨型版本 带 MacVim 图形界面。  可使用(+)与不可使用(-)的功能:
+acl               +file_in_path      -mouse_sysmouse    -tag_old_static
+arabic            +find_in_path      +mouse_urxvt       -tag_any_white
+autocmd           +float             +mouse_xterm       +tcl
+autochdir         +folding           +multi_byte        +termguicolors
-autoservername    -footer            +multi_lang        +terminal
+balloon_eval      +fork()            -mzscheme          +terminfo
+balloon_eval_term +fullscreen        +netbeans_intg     +termresponse
+browse            +gettext           +num64             +textobjects
++builtin_terms    -hangul_input      +odbeditor         +textprop
+byte_offset       +iconv             +packages          +timers
+channel           +insert_expand     +path_extra        +title
+cindent           +ipv6              +perl              +toolbar
+clientserver      +job               +persistent_undo   +transparency
+clipboard         +jumplist          +popupwin          +user_commands
+cmdline_compl     +keymap            +postscript        +vartabs
+cmdline_hist      +lambda            +printer           +vertsplit
+cmdline_info      +langmap           +profile           +virtualedit
+comments          +libcall           -python            +visual
+conceal           +linebreak         +python3           +visualextra
+cryptv            +lispindent        +quickfix          +viminfo
+cscope            +listcmds          +reltime           +vreplace
+cursorbind        +localmap          +rightleft         +wildignore
+cursorshape       +lua               +ruby              +wildmenu
+dialog_con_gui    +menu              +scrollbind        +windows
+diff              +mksession         +signs             +writebackup
+digraphs          +modify_fname      +smartindent       -X11
+dnd               +mouse             -sound             -xfontset
-ebcdic            +mouseshape        +spell             +xim
+emacs_tags        +mouse_dec         +startuptime       -xpm
+eval              -mouse_gpm         +statusline        -xsmp
+ex_extra          -mouse_jsbterm     -sun_workshop      -xterm_clipboard
+extra_search      +mouse_netterm     +syntax            -xterm_save
-farsi             +mouse_sgr         +tag_binary       
```

Plugin Manager

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

```

## install

    git clone https://github.com/wandercn/go-ide-vim.conf.git ./vim_conf && mv ./vim_conf/.vimrc $HOME/.vimrc

    vim +PlugInstall


## screen   

![](go-vim.gif)
