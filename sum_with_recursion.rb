def sum(numbers)
  return 0 if numbers == []

  numbers[0] + sum(numbers.slice(1..))
end
