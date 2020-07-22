def binary_search_with_recursion(numbers, item, mid=nil)
  mid = numbers.length / 2 if mid.nil?
  return mid if numbers[mid] == item

  if numbers[mid] > item
    mid = ((mid - 1) + numbers.length) / 2
    binary_search_with_recursion(numbers, item, mid)
  else
    mid = ((mid + 1) + numbers.length) / 2
    binary_search_with_recursion(numbers, item, mid)
  end
end
