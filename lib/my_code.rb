def map (source_array) 
  result = []
  i = 0 
  while i < source_array.size do
    result[i] = yield(source_array[i])
    i += 1
  end
  return result
end

def reduce (source_array, starting_value = true)
  
  result = starting_value
  
  i = 0
  while i < source_array.size do
    result = yield(result, source_array[i])
    i += 1
  end
  return result
  
end
