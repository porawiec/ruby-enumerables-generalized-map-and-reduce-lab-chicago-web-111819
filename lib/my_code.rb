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
  total = 0
  i = 0
  
  while i < source_array.length do
    total += yield(starting_value, source_array[i])
    i += 1
  end
  total
end