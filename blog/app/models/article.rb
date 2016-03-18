class Article < ActiveRecord::Base
    #ensure that all articles have a title at least 5 chars long
    validates :title, presence: true, 
                      length: { minimum: 5}  
    
end
