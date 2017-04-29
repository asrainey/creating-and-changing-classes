class Integer

  def to_roman
    number = self
      roman_numeral = 'M' * (number.to_i / 1000) + \
      'IM' * ((number.to_i % 1000) / 999) + \
      'D' * (((number.to_i % 1000) / 500) - ((number.to_i % 1000) / 999)) + \
      'ID' * (((number.to_i % 500) / 499) - ((number.to_i % 1000) / 999)) + \
      'C' * (((number.to_i % 500) / 100) - (4 * ((number.to_i % 500) / 499))) + \
      'IC' * (((number.to_i % 100) / 99) - ((number.to_i % 500) / 499)) + \
      'L' * (((number.to_i % 100) / 50) - ((number.to_i % 100) / 99)) + \
      'IL'* (((number.to_i % 50) / 49) - ((number.to_i % 100) / 99)) + \
      'X' * (((number.to_i % 50) / 10) - (4 * ((number.to_i % 50) / 49))) + \
      'IX' * (((number.to_i % 10) / 9) - ((number.to_i % 50) / 49)) + \
      'V' * (((number.to_i % 10) / 5) - ((number.to_i % 10) / 9)) + \
      'IV' * (((number.to_i % 5) / 4) - ((number.to_i % 10) / 9)) + \
      'I' * (((number.to_i % 5)) - (4 * ((number.to_i % 5) / 4)))
      puts roman_numeral
    end
end

65.to_roman
