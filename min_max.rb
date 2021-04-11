def two_max_values(arr)
  if arr.size < 2 
    puts 'array is too short'
    return
  else
    arr.uniq.sort[-2..-1] 
  end
end

def two_min_values(arr)
  if arr.size < 2 
    puts 'array is too short'
    return
  else
    arr.uniq.sort[0..1] 
  end
end


array = [1, 2, 12, 34, 35, 6, 0, 34, 122, 124, 789, 999, 33, 54, 763, 893, 999]

p two_max_values(array)

p two_min_values(array)
