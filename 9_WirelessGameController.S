@MC4000-1
# MC6000-1 x0->x0
# y->p0
# x->p1
# x1->tx
  slx x0
  mov p1 x1
  mov p0 x1
  mov x0 x1
  slp 1

@MC6000-1
# x0->MC4000-1 x0
# a->p0
# b->p1
# rx->x3
BCK: teq x3 -1
- slp 1
- jmp BCK
  teq 100 p0
+ jmp A100
  teq 0 p1
+ mov 0 x0
- mov 2 x0
  slp 1
  jmp BCK
A100: teq 0 p1
+ mov 1 x0
- mov 3 x0
  slp 1
