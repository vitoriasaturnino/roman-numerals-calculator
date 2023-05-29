require_relative 'roman_numerals_converter'

class RomanNumbersCalculator
  def initialize
    @converter = RomanNumeralsConverter.new
  end

  def sum(roman_number1, roman_number2)
    number1 = @converter.convert(roman_number1)
    number2 = @converter.convert(roman_number2)
    result = number1 + number2
    @converter.convert_to_roman(result)
  end

  def subtraction(roman_number1, roman_number2)
    number1 = @converter.convert(roman_number1)
    number2 = @converter.convert(roman_number2)
    result = number1 - number2
    @converter.convert_to_roman(result)
  end

  def multiplication(roman_number1, roman_number2)
    number1 = @converter.convert(roman_number1)
    number2 = @converter.convert(roman_number2)
    result = number1 * number2
    @converter.convert_to_roman(result)
  end

  def division(roman_number1, roman_number2)
    number1 = @converter.convert(roman_number1)
    number2 = @converter.convert(roman_number2)
    result = number1 / number2
    @converter.convert_to_roman(result)
  end
end