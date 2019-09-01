#expect(map([1, 2, 3, -9]){|n| n * -1}).to eq([-1, -2, -3, 9])
expect(reduce(source_array){|memo, n| memo + n}).to eq(6)
expect(reduce(source_array, starting_point){|memo, n| memo + n}).to eq(106)
def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield(source_array[i]))
    i += 1
  end
  new
end

def reduce(s, sp=nil)
  if sp
    accum = sp
    i = 0
  else
    accum = s[0]
    i = 1
  end
  while i < s.length
    accum = yield(accum, s[i])
    i += 1
  end
  accum
end
