# frozen_string_literal: true


def fizz_buzz(start, stop)
  return if start > stop

  result = []

  start.upto(stop) do |i|
    a = if i % 3 == 0 && i % 5 == 0
          "FizzBuzz"
        elsif i % 3 == 0
          "Fizz"
        elsif i % 5 == 0
          "Buzz"
        else
          i
        end
    result << a
  end

  result.join(" ")
end

# END
