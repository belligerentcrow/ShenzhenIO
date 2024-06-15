@MC4000-1
# maximize->p1
# audio-in->p0
# x1-> @MC4000-2 x0
  mov p0 acc
  teq p1 100
+ sub 50
+ mul 4
+ add 50
  mov acc x1
  mov 0 acc
  slp 1

  @MC4000-2
  # @MC4000-1 x1 -> x0
  # p1-> audio-out
  mov x0 p1
  slp 1
