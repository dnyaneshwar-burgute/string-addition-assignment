require_relative 'string_calculator'

RSpec.describe "StringCalculator" do
  before do
    @calculator = StringCalculator.new
  end

  it 'should return zero if no numbers passed' do
    expect(@calculator.add('')).to eq(0)
  end

  it 'should return 1 if sent the numbers as 1' do
    expect(@calculator.add('1')).to eq(1)
  end

  it 'should return 6 if sent the numbers as "1,5"' do
    expect(@calculator.add('1,5')).to eq(6)
  end

  it 'should pass any amount of numbers' do
    expect(@calculator.add('1,5,4,2')).to eq(12)
  end

  it 'should handle the new line in the string' do
    expect(@calculator.add('1\n2,3')).to eq(6)
  end

  it 'should support the different delimeters e.g. "//;\n1;2"' do
    expect(@calculator.add('1\n2,3')).to eq(6)
  end
end
