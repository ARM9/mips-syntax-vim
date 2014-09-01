" Vim syntax file
" Language: MIPS
" Maintainer: ARM9

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case match

syn keyword mipsTodo     contained todo fixme danger note notice bug author date

syn region mipsComment start="//\|#\|;" end="$" contains=armTodo
syn region mipsComment start="/\*" end="\*/" contains=mipsTodo

syn match mipsNumericOp "[+-/*%<>=&|^!]"

" hex
syn match mipsNumber "0x\x\+\>"
syn match mipsNumber "\d\x*h\>"
" dec
syn match mipsNumber "\d\+\>"
" bin
syn match mipsNumber "0b[01]\+\>"
syn match mipsNumber "[01]\+b\>"

syn region mipsString start=/"/ skip=/\\"/ end=/"/
syn region mipsString start="'" skip="\\'" end="'"

syn match mipsIdentifier "\<\h\w\+\>"
syn match mipsLabel "\<\h\w\+:"

syn match mipsRegister "\$zero"
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

syn match mipsDirective "\.2byte"
syn match mipsDirective "\.4byte"
syn match mipsDirective "\.8byte"
syn match mipsDirective "\.aent"
syn match mipsDirective "\.align"
syn match mipsDirective "\.aascii"
syn match mipsDirective "\.asciiz"
syn match mipsDirective "\.byte"
syn match mipsDirective "\.comm"
syn match mipsDirective "\.cpadd"
syn match mipsDirective "\.cpload"
syn match mipsDirective "\.cplocal"
syn match mipsDirective "\.cprestore"
syn match mipsDirective "\.cpreturn"
syn match mipsDirective "\.cpsetup"
syn match mipsDirective "\.data"
syn match mipsDirective "\.double"
syn match mipsDirective "\.dword"
syn match mipsDirective "\.dynsym"
syn match mipsDirective "\.end"
syn match mipsDirective "\.endr"
syn match mipsDirective "\.ent"
syn match mipsDirective "\.extern"
syn match mipsDirective "\.file"
syn match mipsDirective "\.float"
syn match mipsDirective "\.fmask"
syn match mipsDirective "\.frame"
syn match mipsDirective "\.globl"
syn match mipsDirective "\.gpvalue"
syn match mipsDirective "\.gpword"
syn match mipsDirective "\.half"
syn match mipsDirective "\.hword"
syn match mipsDirective "\.int"
syn match mipsDirective "\.kdata"
syn match mipsDirective "\.ktext"
syn match mipsDirective "\.lab"
syn match mipsDirective "\.lcomm"
syn match mipsDirective "\.loc"
syn match mipsDirective "\.long"
syn match mipsDirective "\.mask"
syn match mipsDirective "\.nada"
syn match mipsDirective "\.nop"
syn match mipsDirective "\.octa"
syn match mipsDirective "\.option"
syn match mipsDirective "\.origin"
syn match mipsDirective "\.quad"
syn match mipsDirective "\.repeat"
syn match mipsDirective "\.rdata"
syn match mipsDirective "\.sdata"
syn match mipsDirective "\.section"
syn match mipsDirective "\.set"
syn match mipsDirective "\.short"
syn match mipsDirective "\.single"
syn match mipsDirective "\.size"
syn match mipsDirective "\.space"
syn match mipsDirective "\.string"
syn match mipsDirective "\.struct"
syn match mipsDirective "\.text"
syn match mipsDirective "\.type"
syn match mipsDirective "\.verstamp"
syn match mipsDirective "\.weakext"
syn match mipsDirective "\.word"

" Arithmetic and Logical Instructions
syn keyword mipsInstruction abs
syn keyword mipsInstruction add addu addi addiu
syn keyword mipsInstruction and andi
syn keyword mipsInstruction clo clz
syn keyword mipsInstruction div divu 
syn keyword mipsInstruction mult multu mul mulo mulou madd maddu msub msubu
syn keyword mipsInstruction neg negu
syn keyword mipsInstruction nor
syn keyword mipsInstruction not
syn keyword mipsInstruction or ori
syn keyword mipsInstruction rem remu
syn keyword mipsInstruction sll sllv sra srav srl srlv
syn keyword mipsInstruction rol ror
syn keyword mipsInstruction sub subu
syn keyword mipsInstruction xor xori

" Constant-Manipulating Instructions
syn keyword mipsInstruction lui li
syn keyword mipsInstruction slt sltu slti sltiu
syn keyword mipsInstruction seq
syn keyword mipsInstruction sge sgeu
syn keyword mipsInstruction sgt sgtu
syn keyword mipsInstruction sle sleu
syn keyword mipsInstruction sne

" Branch Instructions
syn keyword mipsInstruction b
syn keyword mipsInstruction bc1f bc1t
syn keyword mipsInstruction beq beqz
syn keyword mipsInstruction bgez bgezal bgtz
syn keyword mipsInstruction blez bltzal bltz
syn keyword mipsInstruction bne bnez
syn keyword mipsInstruction bge bgeu
syn keyword mipsInstruction bgt bgtu
syn keyword mipsInstruction ble bleu
syn keyword mipsInstruction blt bltu

" Jump Instructions
syn keyword mipsInstruction j jal jalr jr

" Trap Instructions
syn keyword mipsInstruction teq teqi
syn keyword mipsInstruction tne tnei
syn keyword mipsInstruction tge tgeu tgei tgeiu
syn keyword mipsInstruction tlt tltu tlti tltiu

" Load Instructions
syn keyword mipsInstruction la
syn keyword mipsInstruction lb lbu lh lhu
syn keyword mipsInstruction lw lwc1 lwl lwr
syn keyword mipsInstruction ld
syn keyword mipsInstruction ulh ulhu ulw
syn keyword mipsInstruction ll

" Store Instructions
syn keyword mipsInstruction sb sh sw swc1 sdc1 swl swr sd ush usw sc

" Data Movement Instructions
syn keyword mipsInstruction move
syn keyword mipsInstruction mfhi mflo
syn keyword mipsInstruction mthi mtlo
syn keyword mipsInstruction mfc0 mfc1
syn match mipsInstruction "mfc1\.d"
syn keyword mipsInstruction mtc0 mtc1
syn keyword mipsInstruction movn movz movf movt

" Floating-Point Instructions
syn match mipsInstruction "abs\.d"
syn match mipsInstruction "abs\.s"
syn match mipsInstruction "add\.d"
syn match mipsInstruction "add\.s"
syn match mipsInstruction "ceil\.w\.d"
syn match mipsInstruction "ceil\.w\.s"
syn match mipsInstruction "c\.eq\.d"
syn match mipsInstruction "c\.eq\.s"
syn match mipsInstruction "c\.le\.d"
syn match mipsInstruction "c\.le\.s"
syn match mipsInstruction "c\.lt\.d"
syn match mipsInstruction "c\.lt\.s"
syn match mipsInstruction "cvt\.d\.s"
syn match mipsInstruction "cvt\.d\.w"
syn match mipsInstruction "cvt\.s\.d"
syn match mipsInstruction "cvt\.s\.w"
syn match mipsInstruction "cvt\.w\.d"
syn match mipsInstruction "cvt\.w\.s"
syn match mipsInstruction "div\.d"
syn match mipsInstruction "div\.s"
syn match mipsInstruction "floor\.w\.d"
syn match mipsInstruction "floor\.w\.s"
syn match mipsInstruction "l\.d"
syn match mipsInstruction "l\.s"
syn match mipsInstruction "mov\.d"
syn match mipsInstruction "mov\.s"
syn match mipsInstruction "movf\.d"
syn match mipsInstruction "movf\.s"
syn match mipsInstruction "movt\.d"
syn match mipsInstruction "movt\.s"
syn match mipsInstruction "movn\.d"
syn match mipsInstruction "movn\.s"
syn match mipsInstruction "movz\.d"
syn match mipsInstruction "movz\.s"
syn match mipsInstruction "mul\.d"
syn match mipsInstruction "mul\.s"
syn match mipsInstruction "neg\.d"
syn match mipsInstruction "neg\.s"
syn match mipsInstruction "round\.w\.d"
syn match mipsInstruction "round\.w\.s"
syn match mipsInstruction "sqrt\.d"
syn match mipsInstruction "sqrt\.s"
syn match mipsInstruction "s\.d"
syn match mipsInstruction "s\.s"
syn match mipsInstruction "sub\.d"
syn match mipsInstruction "sub\.s"
syn match mipsInstruction "trunc\.w\.d"
syn match mipsInstruction "trunc\.w\.s"

" Exception and Interrupt Instructions
syn keyword mipsInstruction eret
syn keyword mipsInstruction syscall
syn keyword mipsInstruction break
syn keyword mipsInstruction nop

if version >= 508 || !exists("did_mips_syntax_inits")
  if version < 508
    let did_mips_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink mipsComment      Comment

  HiLink mipsNumericOp    Number
  HiLink mipsNumber       Number

  HiLink mipsString       String

  HiLink mipsLabel        Label
  HiLink mipsIdentifier   Label
  HiLink mipsDirective    Type

  HiLink mipsRegister     Identifier

  HiLink mipsInstruction  Statement

  HiLink mipsTodo         Todo
  delcommand HiLink
endif

let b:current_syntax = "mips_gas"

