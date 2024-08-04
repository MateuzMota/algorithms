def binary_search (array, target)
  low = 0
  high = array.size - 1

  while low <= high
    mid = (low + high) / 2
    try = array[mid]
    
    if try == target
      return mid
    elsif try > target
      high = mid - 1
    else
      low = mid + 1
    end
  end
  "not found"
end

# Testcase
puts binary_search([1, 3, 5, 7, 9], 3)
puts binary_search([1, 3, 5, 7, 9], 4)
puts binary_search([1, 3, 5, 7, 9], 5)
puts binary_search([1, 3, 5, 7, 9], 9)