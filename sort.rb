$: << File.expand_path('../lib', __FILE__)

require 'pry'
require 'benchmark/ips'
require 'sorts/simple_sort'
require 'sorts/bubble_sort'
require 'sorts/quick_sort'

extend Sorts::SimpleSort
extend Sorts::BubbleSort
extend Sorts::QuickSort

Benchmark.ips do |x|
  samples = (1..1e4).to_a.shuffle

  x.config(time: 5, warmup: 2)

  x.report 'Simple sort' do
    simple_sort(samples)
  end

  x.report 'Bubble sort' do
    bubble_sort(samples)
  end

  # x.report 'Quick sort' do
  #   'not implemented!'
  # end
end
