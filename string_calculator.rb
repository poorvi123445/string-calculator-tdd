# string_calculator.rb
class StringCalculator
    def add(numbers)
      return 0 if numbers.empty?
      numbers.split(/[\n,]/).map(&:to_i).reduce(:+)
    end
  end
  