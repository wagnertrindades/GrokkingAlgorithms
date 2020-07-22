def search_high_value(numbers, high_value=0)
  return high_value if numbers.length == 0

  high_value = numbers[0] if numbers[0] > high_value
  search_high_value(numbers.slice(1..), high_value)
end
