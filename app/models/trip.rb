class Trip < ApplicationRecord



    def upp
        name.uppercase
    end

    def down
        name.downcase
    end

    def self.name_of
        putc "i am class method"
    end
end
