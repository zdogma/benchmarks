module Sorts
  module SimpleSort
    def simple_sort(numbers)
      (0..(numbers.size - 2)).each do |index|
        ((index + 1)..(numbers.size - 1)).each do |compared_index|
          if numbers[index] > numbers[compared_index]
            numbers[index], numbers[compared_index] = numbers[compared_index], numbers[index]
          end
        end
      end

      numbers
    end
  end
end
