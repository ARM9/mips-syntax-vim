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

syn case match

syn keyword mipspsyqTodo    contained todo fixme danger note notice bug author date

syn match mipspsyqNumericOp "[+-/*%<>=&|^!]"
" hex
syn match mipspsyqNumber "0x\x\+\>"
syn match mipspsyqNumber "\$\x\+\>"
syn match mipspsyqNumber "\d\x*h\>"
" dec
syn match mipspsyqNumber "\d\+\>"
" bin
syn match mipspsyqNumber "%[01]\+\>"

syn region mipspsyqComment start=";\|^*" end="$" contains=mipspsyqTodo

syn region mipspsyqString start="\"" skip=+\\"+ end="\"\|$"
syn region mipspsyqString start="'" skip=+\\'+ end="'\|$"

syn match mipspsyqIdentifier    "\<\h\w\+\>"
syn match mipspsyqLabel         "\<\h\w\+:"

syn match mipspsyqRegister "zero"
syn match mipspsyqRegister "v0"
syn match mipspsyqRegister "v1"
syn match mipspsyqRegister "a0"
syn match mipspsyqRegister "a1"
syn match mipspsyqRegister "a2"
syn match mipspsyqRegister "a3"
syn match mipspsyqRegister "t0"
syn match mipspsyqRegister "t1"
syn match mipspsyqRegister "t2"
syn match mipspsyqRegister "t3"
syn match mipspsyqRegister "t4"
syn match mipspsyqRegister "t5"
syn match mipspsyqRegister "t6"
syn match mipspsyqRegister "t7"
syn match mipspsyqRegister "t8"
syn match mipspsyqRegister "t9"
syn match mipspsyqRegister "s0"
syn match mipspsyqRegister "s1"
syn match mipspsyqRegister "s2"
syn match mipspsyqRegister "s3"
syn match mipspsyqRegister "s4"
syn match mipspsyqRegister "s5"
syn match mipspsyqRegister "s6"
syn match mipspsyqRegister "s7"
syn match mipspsyqRegister "k0"
syn match mipspsyqRegister "k1"
syn match mipspsyqRegister "gp"
syn match mipspsyqRegister "sp"
syn match mipspsyqRegister "fp"
syn match mipspsyqRegister "ra"

let i = 0
while i < 32
    " This is for the regular registers
    execute 'syn match mipspsyqRegister "r' . i . '\%(\d\+\)\@!"'
    " And this is for the FP registers
    execute 'syn match mipspsyqRegister "f' . i . '\%(\d\+\)\@!"'
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
