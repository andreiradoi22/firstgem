# frozen_string_literal: true

require_relative "test_are/version"

# com
module TestAre
  class Error < StandardError; end

  def self.convert(amount, from:, to:)
    case from
    when :mi
      case to
      when :km
        amount * 1.609344
      end
    when :km
      case to
      when :mi
        amount / 1.609344
      end
    end
  end
end
