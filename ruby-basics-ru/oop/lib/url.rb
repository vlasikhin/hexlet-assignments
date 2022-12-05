# frozen_string_literal: true

require 'uri'

class Url
  attr_reader :address
  attr_accessor :query_params

  extend Forwardable
  include Comparable

  def ==(other)
    address == other.address
  end

  def initialize(address)
    @address = URI.parse(address)
    @query_params = query_params
  end

  def_delegators :@address, :scheme, :host, :query

  def query_params
    query = address.query

    if query
      query.split('&').each_with_object({}) do |row, hash|
        key, value = row.split('=')
        hash[key.to_sym] = value
      end
    else
      {}
    end
  end

  def query_param(key, default = nil)
    default && !query_params.key?(key) ? query_params[key] = default : query_params[key]
  end
end

# END
