@BUTTON -> p0
@p1 -> PULSE

UP: mov p0 acc
  teq acc 100
+ jmp LOOP
  slp 1
  jmp UP
LOOP: mov 100 p1
  slp 1
  mov 0 p1
  slp 1
