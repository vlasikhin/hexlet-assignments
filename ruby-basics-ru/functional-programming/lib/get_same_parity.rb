# frozen_string_literal: true

def get_same_parity(arr)
  arr.first&.even? ? arr.select(&:even?) : arr.select(&:odd?)
end

# END
