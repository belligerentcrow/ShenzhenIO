@MC6000-1
# radio-rx->x0
# p1->buzzer
CHECK: teq 1 x0
+ jmp Y
  slp 1
  jmp CHECK
Y: mov 100 p1
  slp 1
  mov 0 p1 
  slp 1
  teq x0 0
+ jmp CHECK
  jmp Y
