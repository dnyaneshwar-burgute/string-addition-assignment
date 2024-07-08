class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    delimiter = ','
    if numbers.start_with?('//')
      delimiter, numbers = numbers[2..].split("\n", 2)
    end
    number_array = numbers.gsub('\n',delimiter).split(delimiter).map(&:to_i)
    number_array.sum
  end
end
