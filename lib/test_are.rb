# frozen_string_literal: true

require_relative "test_are/version"

# com
module TestAre
  class Error < StandardError; end

  def self.my_diff(list_of_elements, elem:)
    list_of_elements.each do |_key, value|
      list_of_elements.delete(elem.key(value))
      p self
    end
  end
end
