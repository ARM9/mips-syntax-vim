" Vim syntax file
" Language: MIPS, psyq syntax
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

syn keyword mipspsyqTodo    contained todo fixme danger note notice bug author date

syn match mipspsyqNumericOp "[+-/*%<>=&|^!]"
" dec
syn match mipspsyqNumber "\d\+\>"
" hex
syn match mipspsyqNumber "0x\x\+\>"
syn match mipspsyqNumber "\$\x\+\>"
syn match mipspsyqNumber "\d\x*h\>"
" bin
syn match mipspsyqNumber "%[01]\+\>"
" float
syn match mipspsyqNumber "\%(\d\+\.\d*\|\d*\.\d\+\)\%([eE]\?[-+]\?\d\+\)\?\>"

syn region mipspsyqComment start=";\|^*" end="$" contains=mipspsyqTodo

syn region mipspsyqString start="\"" skip=+\\"+ end="\"\|$"
syn region mipspsyqString start="'" skip=+\\'+ end="'\|$"

syn match mipspsyqIdentifier    "\<\h\w\+\>"
syn match mipspsyqLabel         "\<\h\w\+:"

syn match mipspsyqRegister "\<v[01]\>"
syn match mipspsyqRegister "\<a[0-3]\>"
syn match mipspsyqRegister "\<t[0-9]\>"
syn match mipspsyqRegister "\<s[0-7]\>"
syn match mipspsyqRegister "\<k[01]\>"
syn keyword mipspsyqRegister zero at gp sp fp ra

let i = 0
while i < 32
    " This is for the regular registers
    execute 'syn match mipspsyqRegister "\<r' . i . '\>"'
    " And this is for the FP registers
    execute 'syn match mipspsyqRegister "\<f' . i . '\>"'
    let i = i + 1
endwhile

so <sfile>:p:h/include/mips_instructions.vim
so <sfile>:p:h/include/psyq_directives.vim

if version >= 508 || !exists("did_mipspsyq_syntax_inits")
    if version < 508
        let did_mipspsyq_syntax_inits = 1
        command -nargs=+ HiLink hi link <args>
    else
        command -nargs=+ HiLink hi def link <args>
    endif
    HiLink mipspsyqComment      Comment

    HiLink mipspsyqNumericOp    Operator
    HiLink mipspsyqNumber       Constant

    HiLink mipspsyqString       String

    HiLink mipspsyqLabel        Function
    HiLink mipspsyqIdentifier   Function

    HiLink psyqDirective        PreProc

    HiLink mipspsyqRegister     Type
    HiLink mipsInstruction      Keyword
    HiLink mipsPseudoOp         Keyword

    HiLink mipspsyqTodo         Todo

    delcommand HiLink
endif

let b:current_syntax = "mipspsyq"
