require 'pry'

def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""  # As such, there should be a new String for each inner array, or pair
row_index = 0
pizza_array = []
while row_index < src.count do
 pizza_message = "I love #{src[row_index][0]} and #{src[row_index][-1]} on my pizza"
  row_index += 1
  pizza_array << pizza_message
end
pizza_array
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  row_index = 0
  greater_pair_array = []
  while row_index < src.count do
   greater_pair_array << src[row_index].max
   row_index += 1
 end
 greater_pair_array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  row_index = 0
  even_array = []
  while row_index < src.count do
    if src[row_index] % 2 == 0 do
      even_array << src[row_index]
    end
    row_index += 1
  end
  even_array = even_array[0] + even_array[-1]
  even_array
end