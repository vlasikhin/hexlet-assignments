# frozen_string_literal: true

# rubocop:disable Style/For
# BEGIN

def build_query_string(hash)
  hash.sort.map{ |key, value| "#{key}=#{value}" }.join('&')
end

# END
# rubocop:enable Style/For
