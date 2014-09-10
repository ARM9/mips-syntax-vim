Syntax highlighting for gas mips assembly, for the vim text editor.

### Installing
Put the .vim file(s) in /syntax into ~/.vim/syntax
__or with Pathogen__
Clone this repo into your ~/.vim/bundle directory.

### Using
In your .vimrc:
```
au BufNewFile,BufRead *.s,*.S set filetype=mips
```
and/or put this line near the top or bottom of your assembly file(s):
```
# vim:ft=mips
```

