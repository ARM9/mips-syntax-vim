syntax keyword mipsInstruction add addi addiu addu
syntax keyword mipsInstruction and andi
syntax keyword mipsInstruction bc0f bc0t bc1f bc1t bc2f bc2t bc3f bc3t
syntax keyword mipsInstruction beq beqz
syntax keyword mipsInstruction bgez bgezal bgtz
syntax keyword mipsInstruction blez bltz bltzal
syntax keyword mipsInstruction bne bnez
syntax keyword mipsInstruction break
syntax keyword mipsInstruction c0 c1 c2 c3
syntax keyword mipsInstruction cfc0 cfc1 cfc2 cfc3
syntax keyword mipsInstruction ctc0 ctc1 ctc2 ctc3
syntax keyword mipsInstruction div divu
syntax keyword mipsInstruction j jal jalr jalx jr
syntax keyword mipsInstruction lb lbu lh lhu lui
syntax keyword mipsInstruction lw lwc0 lwc1 lwc2 lwc3 lwl lwr
syntax keyword mipsInstruction mfc0 mfc1 mfc2 mfc3 mfhi mflo
syntax keyword mipsInstruction mtc0 mtc1 mtc2 mtc3 mthi mtlo
syntax keyword mipsInstruction mult multu
syntax keyword mipsInstruction neg negu
syntax keyword mipsInstruction nor not or ori
syntax keyword mipsInstruction rem remu rfe
syntax keyword mipsInstruction sb sh
syntax keyword mipsInstruction sll sllv slt slti sltiu sltu
syntax keyword mipsInstruction sra srav srl srlv
syntax keyword mipsInstruction sub subu
syntax keyword mipsInstruction sw swc0 swc1 swc2 swc3 swl swr
syntax keyword mipsInstruction syscall
syntax keyword mipsInstruction tlbp tlbr tlbwi tlbwr
syntax keyword mipsInstruction xor xori

syntax match mipsInstruction "abs\.d"
syntax match mipsInstruction "abs\.s"
syntax match mipsInstruction "add\.d"
syntax match mipsInstruction "add\.s" 
syntax match mipsInstruction "c\.eq\.d"
syntax match mipsInstruction "c\.eq\.s"
syntax match mipsInstruction "c\.f\.d"
syntax match mipsInstruction "c\.f\.s"
syntax match mipsInstruction "c\.le\.d"
syntax match mipsInstruction "c\.le\.s"
syntax match mipsInstruction "c\.lt\.d"
syntax match mipsInstruction "c\.lt\.s"
syntax match mipsInstruction "c\.nge\.d"
syntax match mipsInstruction "c\.nge\.s"
syntax match mipsInstruction "c\.ngl\.d"
syntax match mipsInstruction "c\.ngle\.d"
syntax match mipsInstruction "c\.ngle\.s"
syntax match mipsInstruction "c\.ngl\.s"
syntax match mipsInstruction "c\.ngt\.d"
syntax match mipsInstruction "c\.ngt\.s"
syntax match mipsInstruction "c\.ole\.d"
syntax match mipsInstruction "c\.ole\.s"
syntax match mipsInstruction "c\.olt\.d"
syntax match mipsInstruction "c\.olt\.s"
syntax match mipsInstruction "c\.seq\.d"
syntax match mipsInstruction "c\.seq\.s"
syntax match mipsInstruction "c\.sf\.d"
syntax match mipsInstruction "c\.sf\.s"
syntax match mipsInstruction "c\.ueq\.d"
syntax match mipsInstruction "c\.ueq\.s"
syntax match mipsInstruction "c\.ule\.d"
syntax match mipsInstruction "c\.ule\.s"
syntax match mipsInstruction "c\.ult\.d"
syntax match mipsInstruction "c\.ult\.s"
syntax match mipsInstruction "c\.un\.d"
syntax match mipsInstruction "c\.un\.s"
syntax match mipsInstruction "cvt\.d\.s"
syntax match mipsInstruction "cvt\.d\.w"
syntax match mipsInstruction "cvt\.s\.d"
syntax match mipsInstruction "cvt\.s\.w"
syntax match mipsInstruction "cvt\.w\.d"
syntax match mipsInstruction "cvt\.w\.s"
syntax match mipsInstruction "div\.d"
syntax match mipsInstruction "div\.s"
syntax match mipsInstruction "l\.s"
syntax match mipsInstruction "mov\.d"
syntax match mipsInstruction "mov\.s"
syntax match mipsInstruction "mul\.d"
syntax match mipsInstruction "mul\.s"
syntax match mipsInstruction "neg\.d"
syntax match mipsInstruction "neg\.s"
syntax match mipsInstruction "s\.s"
syntax match mipsInstruction "sub\.d"
syntax match mipsInstruction "sub\.s"

syntax keyword mipsInstruction b bal
syntax keyword mipsInstruction ehb
syntax keyword mipsInstruction nop ssnop

syntax keyword mipsPseudoOp abs
syntax keyword mipsPseudoOp bge bgeu bgt bgtu ble bleu blt Highlights bltu
syntax keyword mipsPseudoOp cop0 cop1 cop2 cop3
syntax keyword mipsPseudoOp la lca ld li
syntax keyword mipsPseudoOp move
syntax keyword mipsPseudoOp mul mulo mulou
syntax keyword mipsPseudoOp rol ror
syntax keyword mipsPseudoOp sd seq sge sgeu sgt sgtu
syntax keyword mipsPseudoOp sle sleu sne
syntax keyword mipsPseudoOp ulh ulhu ulw ush usw

syntax match mipsPseudoOp "l\.d"
syntax match mipsPseudoOp "li\.d"
syntax match mipsPseudoOp "li\.s"
syntax match mipsPseudoOp "s\.d"
syntax match mipsPseudoOp "trunc\.w\.d"
syntax match mipsPseudoOp "trunc\.w\.s"

syntax keyword mipsInstruction bc0fl bc0tl bc1fl bc1tl bc2fl bc2tl bc3fl bc3tl
syntax keyword mipsInstruction beql beqzl
syntax keyword mipsInstruction bgezall bgezl bgtzl
syntax keyword mipsInstruction blezl bltzall bltzl
syntax keyword mipsInstruction bnel bnezl
syntax keyword mipsInstruction flush
syntax keyword mipsInstruction invalidate
syntax keyword mipsInstruction lcache
syntax keyword mipsInstruction ldc1 ldc2 ldc3 ll
syntax keyword mipsInstruction sc scache sdc1 sdc2 sdc3
syntax keyword mipsInstruction sync
syntax keyword mipsInstruction teq teqi
syntax keyword mipsInstruction tge tgei tgeiu tgeu
syntax keyword mipsInstruction tlt tlti tltiu tltu
syntax keyword mipsInstruction tne tnei

syntax match mipsInstruction "ceil\.w\.d"
syntax match mipsInstruction "ceil\.w\.s"
syntax match mipsInstruction "floor\.w\.d"
syntax match mipsInstruction "floor\.w\.s"
syntax match mipsInstruction "round\.w\.d"
syntax match mipsInstruction "round\.w\.s"
syntax match mipsInstruction "sqrt\.d"
syntax match mipsInstruction "sqrt\.s"
syntax match mipsInstruction "sync\.l"
syntax match mipsInstruction "sync\.p"

syntax keyword mipsPseudoOp bgel bgeul bgtl bgtul
syntax keyword mipsPseudoOp blel bleul bltl bltul

syntax keyword mipsInstruction cache
syntax keyword mipsInstruction clo clz
syntax keyword mipsInstruction dabs dadd daddi daddiu daddu
syntax keyword mipsInstruction dctr dctw
syntax keyword mipsInstruction ddiv ddivu
syntax keyword mipsInstruction deret
syntax keyword mipsInstruction di
syntax keyword mipsInstruction dla dlca dli
syntax keyword mipsInstruction dmfc0 dmfc1 dmfc2 dmfc3
syntax keyword mipsInstruction dmtc0 dmtc1 dmtc2 dmtc3
syntax keyword mipsInstruction dmul dmulo dmulou dmult dmultu
syntax keyword mipsInstruction dneg dnegu
syntax keyword mipsInstruction drem dremu
syntax keyword mipsInstruction drol dror
syntax keyword mipsInstruction dsll dsll32 dsllv
syntax keyword mipsInstruction dsra dsra32 dsrav dsrl dsrl32 dsrlv
syntax keyword mipsInstruction dsub dsubu
syntax keyword mipsInstruction ei
syntax keyword mipsInstruction eret
syntax keyword mipsInstruction ext
syntax keyword mipsInstruction ins
syntax keyword mipsInstruction ldl ldr lld lwu
syntax keyword mipsInstruction madd maddu
syntax keyword mipsInstruction mfhc1 mfhc2
syntax keyword mipsInstruction msub msubu
syntax keyword mipsInstruction mthc1 mthc2
syntax keyword mipsInstruction pause
syntax keyword mipsInstruction rdhwr rdpgpr
syntax keyword mipsInstruction rorv rotl rotr rotrv
syntax keyword mipsInstruction scd
syntax keyword mipsInstruction sdbbp sdl sdr
syntax keyword mipsInstruction seb
syntax keyword mipsInstruction seh
syntax keyword mipsInstruction sync_acquire synci sync_release
syntax keyword mipsInstruction sync_mb sync_rmb sync_wmb
syntax keyword mipsInstruction udi0 udi1 udi2 udi3 udi4 udi5 udi6 udi7 udi8 udi9
syntax keyword mipsInstruction udi10 udi11 udi12 udi13 udi14 udi15
syntax keyword mipsInstruction uld usd
syntax keyword mipsInstruction wait
syntax keyword mipsInstruction wrpgpr
syntax keyword mipsInstruction wsbh

syntax match mipsInstruction "ceil\.l\.d"
syntax match mipsInstruction "ceil\.l\.s"
syntax match mipsInstruction "cvt\.d\.l"
syntax match mipsInstruction "cvt\.l\.d"
syntax match mipsInstruction "cvt\.l\.s"
syntax match mipsInstruction "cvt\.s\.l"
syntax match mipsInstruction "floor\.l\.d"
syntax match mipsInstruction "floor\.l\.s"
syntax match mipsInstruction "jalr\.hb"
syntax match mipsInstruction "jr\.hb"
syntax match mipsInstruction "round\.l\.d"
syntax match mipsInstruction "round\.l\.s"
syntax match mipsInstruction "trunc\.l\.d"
syntax match mipsInstruction "trunc\.l\.s"

syntax keyword mipsPseudoOp subi subiu
syntax keyword mipsPseudoOp blti clear
