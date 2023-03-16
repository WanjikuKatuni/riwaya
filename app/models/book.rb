class Book < ApplicationRecord

    def summary 
        "#{self.title}: #{self.author}"
    end
end
