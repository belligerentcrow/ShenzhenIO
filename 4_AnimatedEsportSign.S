# TODO: find optimization

@MC4000-1
# p0 -> click-0
# p1 -> click-1
  mov 100 p0
  mov 0 p1
  slp 1
  mov 0 p0
  mov 100 p1
  slp 1

@MC4000X-1
# p0 -> drink-0
# p1 -> drink-1
  mov 100 p0
  mov 0 p1
  slp 6
  mov 0 p0
  mov 100 p1
  slp 1
  mov 0 p1
  slp 2
  mov 100 p1
  slp 1

@MC4000-2
# p0 -> drink-1
# p1 -> drink-2
  teq p0 0 
+  jmp DOWN
  mov 100 p1
  mov 0 p0
  slp 2
  mov 0 p1
  slp 1
  mov 0 p0 
DOWN: slp 7
