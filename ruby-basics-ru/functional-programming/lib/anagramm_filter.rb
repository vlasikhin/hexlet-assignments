# frozen_string_literal: true

def anagramm_filter(example, arr)
  result = []
  sorted_example = example.split('').sort

  arr.each do |word|
    result << word if sorted_example == word.split('').sort
  end

  result
end

# END
