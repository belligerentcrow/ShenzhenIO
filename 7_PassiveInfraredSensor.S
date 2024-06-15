@MC6000-1
# time ->p1
# sensor->p0
# on-time ->x2
# off-time->x3
# x0 -> BRIDGE -> MC4000 x0

BCK: teq p1 x2
+ jmp ARMED
  teq p1 x3
  mov 0 x0
  slp 1
  jmp BCK
ARMED: mov p0 acc
  tgt acc 19
+ mov 100 x0
- mov 0 x0
  slp 1
  teq p1 x3
+ jmp BCK
  jmp ARMED

@MC4000-1
# MC6000 x0->x0
# p1->alarm
  slx x0
  mov x0 p1
