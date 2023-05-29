class RomanNumeralsConverter
  TABLE = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000,
  }

  def convert(roman_number)
    accumulator = 0
    last_number_on_the_right = 0

    roman_number.split('').reverse.each do |roman_digit|
      # pega o inteiro referente ao simbulo atual
      current = TABLE[roman_digit]

      # se o da direita for menor, o multiplicaremos por -1 para torn-lo negativo
      multiplier = 1
      multiplier = -1 if current < last_number_on_the_right

      accumulator += current * multiplier

      # atualiza o vizinho a direita
      last_number_on_the_right = current
    end

    accumulator
  end

  def convert_to_roman(number)
    result = ''
    TABLE.each do |roman_digit, value|
      while number >= value
        result += roman_digit
        number -= value
      end
    end
    
    result
  end
end