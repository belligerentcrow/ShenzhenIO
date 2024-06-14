@MC6000-1
# foul -> p0
# point -> p1
# x3 -> DISPLAY
PTY: teq p1 100
+ add 1
  mov acc x3
  slp 1
  teq p0 100
- jmp PTY
SUB: tlt acc 1
+ jmp PTY
  tlt acc 2
+ sub 1
+ jmp PTY
  sub 2
