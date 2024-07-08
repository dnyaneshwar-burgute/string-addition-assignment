class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    delimiter = ','
    if numbers.start_with?('//')
      delimiter, numbers = numbers[2..].split("\n", 2)
    end
    number_array = numbers.gsub('\n',delimiter).split(delimiter).map(&:to_i)

    negative_numbers = number_array.select { |num| num < 0 }
    unless negative_numbers.empty?
      raise "negative numbers not allowed: #{negative_numbers.join(', ')}"
    end
    number_array.sum
  end
end
