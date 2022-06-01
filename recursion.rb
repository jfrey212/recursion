# frozen_string_literal: true

# Using iteration, write a method #fibs which takes a number and returns an
# array containing that many numbers from the fibonacci sequence. Using an example
#  input of 8, this method should return the array [0, 1, 1, 2, 3, 5, 8, 13].

def fibs(num)
  fib_arr = []
  fib_arr << 0 if num >= 0
  fib_arr << 1 if num >= 1

  return fib_arr unless num > 1

  (2..num - 1).each do |digit|
    fib_arr << fib_arr[digit - 2] + fib_arr[digit - 1]
  end

  fib_arr
end

# Now write another method #fibs_rec which solves the same problem recursively.
# This can be done in just 3 lines (or 1 if you’re crazy, but don’t consider
# either of these lengths a requirement… just get it done).

def fibs_rec(num)
    return [0] if num == 0
    return [0, 1] if num == 1

    arr = fibs_rec(num - 1)

    arr << arr[-2] + arr[-1]

    return arr
end
