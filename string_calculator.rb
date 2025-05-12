class StringCalculator
    def add(numbers)
      return 0 if numbers.empty?
  
      if numbers.start_with?("//")
        delimiter = numbers[2]
        numbers = numbers[4..-1]
        numbers = numbers.split(/[\n,#{delimiter}]+/)
      else
        numbers = numbers.split(/[\n,]+/)
      end
  
      result = 0
      negatives = []
  
      numbers.each do |num|
        if num.to_i < 0
          negatives << num.to_i
        else
          result += num.to_i
        end
      end
  
      if negatives.any?
        raise "negative numbers not allowed #{negatives.join(', ')}"
      end
  
      result
    end
  end
  