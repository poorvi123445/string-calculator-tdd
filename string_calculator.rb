# string_calculator.rb
class StringCalculator
    def add(numbers)
      return 0 if numbers.empty?
       # Check if a custom delimiter is provided
    if numbers.start_with?("//")
        delimiter, numbers = numbers.split("\n", 2)
        delimiter = delimiter[2..-1]  # Remove the "//" from the delimiter
      else
        delimiter = /[\n,]/  # Default delimiters: comma and newline
      end
  
      # Split the numbers using the custom delimiter and sum them
      num_array = numbers.split(/#{delimiter}/).map(&:to_i)

        # Check for negative numbers
        negatives = num_array.select { |num| num < 0 }
        unless negatives.empty?
        raise "Negative numbers not allowed: #{negatives.join(', ')}"
        end

        # Sum the numbers
        num_array.reduce(:+)
    end
  end
  