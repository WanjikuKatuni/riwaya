class Book < ApplicationRecord

    validates :title, presence: true
    
    def title_author 
        "#{self.title}: #{self.author}"
    end
end
