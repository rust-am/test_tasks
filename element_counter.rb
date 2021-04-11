arr = [ nil, 2, :foo, "bar", "foo", "apple", "orange", :orange, 45, nil, :foo, :bar, 25, 45, :apple, "bar", nil]

# первый вариант, читерский
p arr.tally

# второй вариант
hash = Hash.new(0)
arr.each { |var| hash[var] += 1 }
p hash

# третий вариант
h = Hash.new(0)
result =
  arr.inject(h) do |memo, var| 
    memo[var] += 1
    memo
  end
p result
