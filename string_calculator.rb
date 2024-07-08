class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    number_array = numbers.gsub('\n',',').split(',').map(&:to_i)
    number_array.sum
  end
end
