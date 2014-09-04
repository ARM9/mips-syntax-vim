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

syn region mipsComment start="//\|;" end="$" contains=mipsTodo
" syn region mipsComment start="//\|#\|;" end="$" contains=mipsTodo
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

syn match mipsIdentifier  "\<\h\w\+\>"
syn match mipsLabel       "\<\h\w\+:"
syn match mipsCPreProc     "#\h\w*\>"

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

syn match gasDirective "\.2byte"
syn match gasDirective "\.4byte"
syn match gasDirective "\.8byte"
syn match gasDirective "\.aent"
syn match gasDirective "\.abort"
syn match gasDirective "\.align"
syn match gasDirective "\.altmacro"
syn match gasDirective "\.ascii"
syn match gasDirective "\.asciz"
syn match gasDirective "\.balign[wl]"
syn match gasDirective "\.bundle_align"
syn match gasDirective "\.bundle_lock"
syn match gasDirective "\.bundle_unlock"
syn match gasDirective "\.byte"
syn match gasDirective "\.cfi_sections"
syn match gasDirective "\.cfi_startproc"
syn match gasDirective "\.cfi_endproc"
syn match gasDirective "\.cfi_personality"
syn match gasDirective "\.cfi_lsda"
syn match gasDirective "\.cfi_def_cfa"
syn match gasDirective "\.cfi_def_cfa_register"
syn match gasDirective "\.cfi_def_cfa_offset"
syn match gasDirective "\.cfi_adjust_cfa_offset"
syn match gasDirective "\.cfi_offset"
syn match gasDirective "\.cfi_rel_offset"
syn match gasDirective "\.cfi_register"
syn match gasDirective "\.cfi_restore"
syn match gasDirective "\.cfi_undefined"
syn match gasDirective "\.cfi_same_value"
syn match gasDirective "\.cfi_remember_state"
syn match gasDirective "\.cfi_return_column"
syn match gasDirective "\.cfi_signal_frame"
syn match gasDirective "\.cfi_window_save"
syn match gasDirective "\.cfi_escape"
syn match gasDirective "\.cfi_val_encoded_addr"
syn match gasDirective "\.comm"
syn match gasDirective "\.cpadd"
syn match gasDirective "\.cpload"
syn match gasDirective "\.cplocal"
syn match gasDirective "\.cprestore"
syn match gasDirective "\.cpreturn"
syn match gasDirective "\.cpsetup"
syn match gasDirective "\.data"
syn match gasDirective "\.def"
syn match gasDirective "\.desc"
syn match gasDirective "\.dim"
syn match gasDirective "\.double"
syn match gasDirective "\.dword"
syn match gasDirective "\.dynsym"
syn match gasDirective "\.eject"
syn match gasDirective "\.else"
syn match gasDirective "\.elseif"
syn match gasDirective "\.end"
syn match gasDirective "\.endef"
syn match gasDirective "\.endfunc"
syn match gasDirective "\.endif"
syn match gasDirective "\.endr"
syn match gasDirective "\.equ"
syn match gasDirective "\.equiv"
syn match gasDirective "\.eqv"
syn match gasDirective "\.err"
syn match gasDirective "\.error"
syn match gasDirective "\.exitm"
syn match gasDirective "\.extern"
syn match gasDirective "\.fail"
syn match gasDirective "\.file"
syn match gasDirective "\.fill"
syn match gasDirective "\.float"
syn match gasDirective "\.fmask"
syn match gasDirective "\.frame"
syn match gasDirective "\.func"
syn match gasDirective "\.global"
syn match gasDirective "\.globl"
syn match gasDirective "\.gpvalue"
syn match gasDirective "\.gpword"
syn match gasDirective "\.gnu_attribute"
syn match gasDirective "\.hidden"
syn match gasDirective "\.hword"
syn match gasDirective "\.ident"
syn match gasDirective "\.if"
syn match gasDirective "\.incbin"
syn match gasDirective "\.include"
syn match gasDirective "\.int"
syn match gasDirective "\.internal"
syn match gasDirective "\.irp[c]"
syn match gasDirective "\.kdata"
syn match gasDirective "\.ktext"
syn match gasDirective "\.lab"
syn match gasDirective "\.lcomm"
syn match gasDirective "\.lflags"
syn match gasDirective "\.line"
syn match gasDirective "\.linkonce"
syn match gasDirective "\.list"
syn match gasDirective "\.ln"
syn match gasDirective "\.loc"
syn match gasDirective "\.loc_mark_labels"
syn match gasDirective "\.local"
syn match gasDirective "\.long"
syn match gasDirective "\.mask"
syn match gasDirective "\.mri"
syn match gasDirective "\.noaltmacro"
syn match gasDirective "\.nolist"
syn match gasDirective "\.nop"
syn match gasDirective "\.octa"
syn match gasDirective "\.option"
syn match gasDirective "\.org"
syn match gasDirective "\.p2align[wl]"
syn match gasDirective "\.popsection"
syn match gasDirective "\.previous"
syn match gasDirective "\.print"
syn match gasDirective "\.protected"
syn match gasDirective "\.psize"
syn match gasDirective "\.purgem"
syn match gasDirective "\.pushsection"
syn match gasDirective "\.quad"
syn match gasDirective "\.reloc"
syn match gasDirective "\.rept"
syn match gasDirective "\.repeat"
syn match gasDirective "\.rdata"
syn match gasDirective "\.sbttl"
syn match gasDirective "\.scl"
syn match gasDirective "\.sdata"
syn match gasDirective "\.section"
syn match gasDirective "\.set"
syn match gasDirective "\.short"
syn match gasDirective "\.single"
syn match gasDirective "\.size"
syn match gasDirective "\.skip"
syn match gasDirective "\.sleb128"
syn match gasDirective "\.space"
syn match gasDirective "\.stab[dns]"
syn match gasDirective "\.string"
syn match gasDirective "\.struct"
syn match gasDirective "\.subsection"
syn match gasDirective "\.symver"
syn match gasDirective "\.tag"
syn match gasDirective "\.text"
syn match gasDirective "\.title"
syn match gasDirective "\.type"
syn match gasDirective "\.uleb128"
syn match gasDirective "\.val"
syn match gasDirective "\.version"
syn match gasDirective "\.verstamp"
syn match gasDirective "\.vtable_entry"
syn match gasDirective "\.vtable_inherit"
syn match gasDirective "\.warning"
syn match gasDirective "\.weak"
syn match gasDirective "\.weakext"
syn match gasDirective "\.weakref"
syn match gasDirective "\.word"

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

  HiLink mipsNumericOp    Operator
  HiLink mipsNumber       Number

  HiLink mipsString       String

  HiLink mipsLabel        Label
  HiLink mipsIdentifier   Label
  HiLink gasDirective     PreProc
  HiLink mipsCPreProc     Identifier

  HiLink mipsRegister     Type
  HiLink mipsInstruction  Function

  HiLink mipsTodo         Todo
  delcommand HiLink
endif

let b:current_syntax = "mips"

