# Your Code Here
def map(source_array)
  new_array = []
  i = 0
  
  while i < source_array.length do
    new_array.push(yield(source_array[i]))
    i += 1
  end
  new_array
end

def reduce(source_array, starting_value = nil)
  if starting_value
    total = starting_value
    i = 0
  else
    i = 0
    total = source_array[i]
  end
  
  while i < source_array.length do
    total = yield(total, source_array[i])
    i += 1
  end
  total
end