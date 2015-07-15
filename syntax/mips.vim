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

syn case match

syn keyword mipsTodo     contained todo fixme danger note notice bug author date

syn match mipsNumericOp "[+-/*%<>=&|^!]"
" hex
syn match mipsNumber "0x\x\+\>"
syn match mipsNumber "\d\x*h\>"
" dec
syn match mipsNumber "\d\+\>"
" bin
syn match mipsNumber "0b[01]\+\>"

syn region mipsComment start="#\|//" end="$" contains=mipsTodo
syn region mipsComment start="/\*" end="\*/" contains=mipsTodo

syn region mipsString start="\"" skip=+\\"+ end="\"\|$"
syn region mipsString start="'" skip=+\\'+ end="'\|$"

syn match mipsIdentifier    "\<\h\w*\>"
syn match mipsLabel         "\<\h\w*:"
syn match mipsLabel         "\<\d\{1,3\}[:fb]"
syn match mipsCPreProc      "^\s*#\(include\|define\|undef\|if\|ifdef\|ifndef\|elif\|else\|endif\|error\|pragma\)\>"

syn match mipsRegister "\$zero"
syn match mipsRegister "\$at"
syn match mipsRegister "\$v0"
syn match mipsRegister "\$v1"
syn match mipsRegister "\$a0"
syn match mipsRegister "\$a1"
syn match mipsRegister "\$a2"
syn match mipsRegister "\$a3"
syn match mipsRegister "\$t0"
syn match mipsRegister "\$t1"
syn match mipsRegister "\$t2"
syn match mipsRegister "\$t3"
syn match mipsRegister "\$t4"
syn match mipsRegister "\$t5"
syn match mipsRegister "\$t6"
syn match mipsRegister "\$t7"
syn match mipsRegister "\$t8"
syn match mipsRegister "\$t9"
syn match mipsRegister "\$s0"
syn match mipsRegister "\$s1"
syn match mipsRegister "\$s2"
syn match mipsRegister "\$s3"
syn match mipsRegister "\$s4"
syn match mipsRegister "\$s5"
syn match mipsRegister "\$s6"
syn match mipsRegister "\$s7"
syn match mipsRegister "\$k0"
syn match mipsRegister "\$k1"
syn match mipsRegister "\$gp"
syn match mipsRegister "\$sp"
syn match mipsRegister "\$fp"
syn match mipsRegister "\$ra"

let i = 0
while i < 32
    " This is for the regular registers
    execute 'syn match mipsRegister "\$' . i . '\%(\d\+\)\@!"'
    " And this is for the FP registers
    execute 'syn match mipsRegister "\$f' . i . '\%(\d\+\)\@!"'
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

    HiLink gasDirective       PreProc
    HiLink mipsDirective      PreProc
    HiLink mipsCPreProc       Identifier

    HiLink mipsRegister       Type
    HiLink mipsInstruction    Keyword
    HiLink mipsPseudoOp       Keyword

    HiLink mipsTodo           Todo
    delcommand HiLink
endif

let b:current_syntax = "mips"

