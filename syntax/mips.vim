" Vim syntax file
" Language: MIPS
" Original Author: Alex Brick <alex@alexrbrick.com>
" Maintainer: ARM9
" Last Change: 
" Based on Alex Brick's syntax file

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syn case ignore

syn keyword mipsTodo     contained todo fixme danger note notice bug author date


syn match mipsNumericOp "[+-/*%<>=&|^!]"

" Assembler identifiers/labels
syn match mipsIdentifier "\<[.\$_A-Za-z0-9]\+\>"
syn match mipsLabel      "\<[.\$_A-Za-z0-9]\+:"

" dec
syn match mipsNumber    "\d\+\>"
" hex
syn match mipsNumber    "0x\x\+\>"
" bin
syn match mipsNumber    "0b[01]\+\>"
" float
syn match mipsNumber    "\d*\.\d\+\>"

syn region mipsComment start="#\|//" end="$" contains=mipsTodo
syn region mipsComment start="/\*" end="\*/" contains=mipsTodo

syn region mipsString start="\"" skip=+\\"+ end="\"\|$"
syn region mipsString start="'" skip=+\\'+ end="'\|$"

syn match mipsCPreProc      "^\s*#\s*\(include\|define\|undef\|if\|ifdef\|ifndef\|elif\|else\|endif\|error\|pragma\)\>"

syn match mipsRegister "\$zero"
syn match mipsRegister "\$at"
syn match mipsRegister "\$v[01]"
syn match mipsRegister "\$a[0-3]"
syn match mipsRegister "\$t[0-9]"
syn match mipsRegister "\$s[0-7]"
syn match mipsRegister "\$k[01]"
syn match mipsRegister "\$gp"
syn match mipsRegister "\$sp"
syn match mipsRegister "\$fp"
syn match mipsRegister "\$ra"

let i = 0
while i < 32
    " This is for the regular registers
    execute 'syn match mipsRegister "\$' . i . '"'
    " And this is for the FP registers
    execute 'syn match mipsRegister "\$f' . i . '"'
    let i = i + 1
endwhile

so <sfile>:p:h/include/mips_instructions.vim
so <sfile>:p:h/include/gas_directives.vim
syn match mipsDirective "\.insn"

if version >= 508 || !exists("did_mips_syntax_inits")
    if version < 508
        let did_mips_syntax_inits = 1
        command -nargs=+ HiLink hi link <args>
    else
        command -nargs=+ HiLink hi def link <args>
    endif
    HiLink mipsComment        Comment

    HiLink mipsNumericOp      Operator
    HiLink mipsNumber         Constant

    HiLink mipsString         String

    HiLink mipsLabel          Function
    HiLink mipsIdentifier     Function

    HiLink gasDirective       Preproc
    HiLink mipsDirective      Preproc
    HiLink mipsCPreProc       Identifier

    HiLink mipsRegister       Type
    HiLink mipsInstruction    Keyword
    HiLink mipsPseudoOp       Keyword

    HiLink mipsTodo           Todo
    delcommand HiLink
endif

let b:current_syntax = "mips"

