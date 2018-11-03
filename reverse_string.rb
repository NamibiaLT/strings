### Method 1: reverse w/ array (takes up a lot of space)

a_string = "something"

def string_reverse(a_string)
  original_arr = a_string.split('')
  arr = []
  while original_arr.length > 0
    arr << original_arr.pop
  end

  arr.join('')

end

puts string_reverse(a_string)

### Method 2: reverse in place (saves space)
a_string = "something"

def string_reverse(a_string)
  left_pointer = 0
  right_pointer = a_string.length - 1

  while left_pointer < right_pointer
    temp = a_string[left_pointer] #s
    a_string[left_pointer] = a_string[right_pointer] #g
    a_string[right_pointer] = temp

    left_pointer += 1
    right_pointer -= 1
  end

  a_string
end

puts string_reverse(a_string)
