names = ['Adriane', 'Alirio', 'Beto', 'Carlos', 'Marcos', 'Wagner', 'Zagneff']

def binary_search(arr, name)
  low = 0
  high = arr.length - 1

  while low <= high
    mid = (low + high) / 2
    guess = arr[mid]

    return mid if guess == name

    if guess > name
      high = mid - 1
    else
      low = mid + 1
    end
  end

  nil
end

puts "Names: #{names}"
puts "Adriane be in position: #{binary_search(names, 'Adriane')}"
puts "Wagner be in position: #{binary_search(names, 'Wagner')}"
puts "Alirio be in position: #{binary_search(names, 'Alirio')}"
puts "Zagneff be in position: #{binary_search(names, 'Zagneff')}"

# Name not exists in array
puts "Xunda be in position: #{binary_search(names, 'Xunda')}"
