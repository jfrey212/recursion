# frozen_string_literal: true

# Using iteration, write a method #fibs which takes a number and returns an
# array containing that many numbers from the fibonacci sequence. Using an example
#  input of 8, this method should return the array [0, 1, 1, 2, 3, 5, 8, 13].

def fibs(num, fib_arr = [])
  fib_arr << 0 if num >= 0
  fib_arr << 1 if num >= 1

  return fib_arr unless num > 1

  (2..n).each do |digit|
    fib_arr << fib_arr[digit - 2] + fib_arr[digit - 1]
  end

  fib_arr
end
