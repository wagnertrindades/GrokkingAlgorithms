unsorted_numbers = [8, 3, 10, 1, 7, 2, 9, 5, 4, 6]

def find_min(numbers)
  min = numbers[0]
  min_index = 0

  numbers.each_with_index do |number, index|
    if number < min
      min = number
      min_index = index
    end
  end

  min_index
end

min_index = find_min(unsorted_numbers)
p "The index of lower value: #{min_index}"
p "The lower value: #{unsorted_numbers[min_index]}"

def selection_sort(numbers)
  sorted_numbers = []

  numbers.length.times do
    min = find_min(numbers)
    sorted_numbers.append(numbers.delete_at(min))
  end

  sorted_numbers
end

p "Array with unsorted numbers: #{unsorted_numbers}"

sorted_numbers = selection_sort(unsorted_numbers)
p "Array with sorted numbers: #{sorted_numbers}"
p "Array with unsorted numbers after selectionSort: #{unsorted_numbers}"
