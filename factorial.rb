def factorial(number)
  return 1 if number == 1

  number * factorial(number - 1)
end

puts "Factorial of 5: #{factorial(5)}"
puts "Factorial of 3: #{factorial(3)}"
puts "Factorial of 10: #{factorial(10)}"
puts "Factorial of 20: #{factorial(20)}"
