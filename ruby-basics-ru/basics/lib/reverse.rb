# frozen_string_literal: true

def reverse(string)
  string.chars.inject { |x, y| y + x }
end

# END
