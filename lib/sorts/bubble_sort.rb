module Sorts
  module BubbleSort
    def bubble_sort(numbers)
      (0..(numbers.size - 1)).to_a.reverse.each do |index|
        (0..index).each do |compared_index|
          if numbers[index] < numbers[compared_index]
            numbers[index], numbers[compared_index] = numbers[compared_index], numbers[index]
          end
        end
      end

      numbers
    end
  end
end
