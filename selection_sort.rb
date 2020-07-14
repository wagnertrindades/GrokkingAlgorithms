disordered_numbers = [8, 3, 10, 1, 7, 2, 9, 5, 4, 6]

def findMin(numbers)
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

min_index = findMin(disordered_numbers)
p "O index do menor número é: #{min_index}"
p "O menor número é: #{disordered_numbers[min_index]}"

def selectionSort(numbers)
  ordered_numbers = []

  numbers.length.times do
    min = findMin(numbers)
    ordered_numbers.append(numbers.delete_at(min))
  end

  ordered_numbers
end

p "Array with disordered numbers: #{disordered_numbers}"

ordered_numbers = selectionSort(disordered_numbers)
p "Array with ordered numbers: #{ordered_numbers}"
p "Array with disordered numbers after selectionSort: #{disordered_numbers}"
