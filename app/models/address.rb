class Address < ApplicationRecord
    def formatted
        lines = line1
        lines << ", #{line2}" if line2
        return "#{lines}, #{city}, #{state} #{zip}"
    end
end
