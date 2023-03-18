class Book < ApplicationRecord

    def title_author 
        "#{self.title}: #{self.author}"
    end
end
