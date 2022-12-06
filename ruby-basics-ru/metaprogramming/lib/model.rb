# frozen_string_literal: true

require 'date'

module Model
  def self.included(base)
    base.extend(ClassMethods)
  end

  attr_accessor :attributes

  def initialize(attributes = {})
    @attributes = {}

    self.class.attr_options.each do |name, options|
      value = attributes.key?(name) ? attributes[name] : options.fetch(:default, nil)
      options = self.class.attr_options[name]
      @attributes[name] = self.class.convert_attribute(value, options[:type])
    end
  end

  module ClassMethods
    attr_reader :attr_options

    def convert_attribute(value, type)
      return if value.nil?

      case type
      when :datetime then DateTime.parse value
      when :string then String value
      when :integer then Integer value
      when :boolean then value.to_s == 'true'
      end
    end

    def attribute(name, options = {})
      @attr_options ||= {}
      @attr_options[name] = options

      define_method name.to_s do
        @attributes[name]
      end

      define_method "#{name}=" do |value|
        options = self.class.attr_options[name]
        @attributes[name] = self.class.convert_attribute(value, options[:type])
      end
    end
  end
end

# END
