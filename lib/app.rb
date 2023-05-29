require_relative 'roman_numbers_calculator'

calculator = RomanNumbersCalculator.new
result = calculator.sum('X', 'V')
puts result
# Output: 'XV'
puts "------------------------"

result = calculator.subtraction('X', 'V')
puts result
# Output: 'V'
puts "------------------------"

result = calculator.multiplication('X', 'V')
puts result
# Output: 'L'
puts "------------------------"

result = calculator.division('X', 'V')
puts result
# Output: 'II'
puts "------------------------"
