
def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield(source_array[i]))
    i += 1
  end
  new
end

def reduce(source_array,starting_point = nil)
  if starting_point
  origin = starting_point
  i = 0
else
  origin = source_array[0]
  i = 1
end
while i < source_array.length
  origin = yield(origin, source_array[i])
  i += 1
end
origin
end
