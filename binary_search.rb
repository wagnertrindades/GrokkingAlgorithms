list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


def binary_search(ordered_list, item)
  low = 0
  high = ordered_list.length - 1

  while low <= high
    mid = (low + high) / 2
    guess = ordered_list[mid]

    return mid if guess == item

    if guess > item
      high = mid - 1
    else
      low = mid + 1
    end
  end

  return nil
end

puts "The number 8 is in #{binary_search(list, 8)} position"
puts "The number 3 is in #{binary_search(list, 3)} position"
puts "The number 1 is in #{binary_search(list, 1)} position"
puts "The number 10 is in #{binary_search(list, 10)} position"

# This numbers not exists in list and returns nil
puts "The number 25 is in #{binary_search(list, 25)} position"
puts "The number -10 is in #{binary_search(list, -10)} position"
