# spec/string_calculator_spec.rb
require 'rspec'
require_relative '../string_calculator'  # Make sure this matches your class file path

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      calculator = StringCalculator.new
      expect(calculator.add('')).to eq(0)
    end

    it 'returns the sum of numbers separated by commas' do
        calculator = StringCalculator.new
        expect(calculator.add('1,2,3')).to eq(6)
      end
  
      it 'returns the sum of numbers separated by newlines' do
        calculator = StringCalculator.new
        expect(calculator.add("1\n2\n3")).to eq(6)
      end
  
      it 'returns the sum of numbers separated by both commas and newlines' do
        calculator = StringCalculator.new
        expect(calculator.add("1\n2,3")).to eq(6)
      end

       # Test for custom delimiters
    it 'handles custom delimiter of ";"' do
        calculator = StringCalculator.new
        expect(calculator.add("//;\n1;2")).to eq(3)
      end
  
      it 'handles custom delimiter of "|"' do
        calculator = StringCalculator.new
        expect(calculator.add("//|\n1|2|3")).to eq(6)
      end
  
      it 'handles custom delimiter of "@"' do
        calculator = StringCalculator.new
        expect(calculator.add("//@\n1@2@3")).to eq(6)
      end
  
      it 'handles custom delimiter of "#"' do
        calculator = StringCalculator.new
        expect(calculator.add("//#\n1#2#3")).to eq(6)
      end
  end
end
