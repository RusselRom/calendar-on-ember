Array::clean = (deleteValue) ->
  i = 0
  while i < @length
    if this[i] is deleteValue
      @splice i, 1
      i--
    i++
  this  
