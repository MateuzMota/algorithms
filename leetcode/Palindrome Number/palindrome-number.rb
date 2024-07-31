# @param {Integer} x
# @return {Boolean}

def is_palindrome(x)
  arr_x = x.to_s.chars
  reverse_arr = []

  for i in 0...arr_x.length
    if reverse_arr.length == 0
      reverse_arr[0] = arr_x[-1]
    end

    reverse_arr[arr_x.length - i - 1] = arr_x[i]
  end

  if reverse_arr == arr_x
    return true
  end

  false
end

# Testcase
puts is_palindrome 121   # output: true
puts is_palindrome -121  # output: false
puts is_palindrome 10    # output: false
