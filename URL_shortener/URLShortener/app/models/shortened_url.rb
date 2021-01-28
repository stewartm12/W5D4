class ShortenedUrl < ApplicationRecord 
    validates :long_url, :user_id, presence: true
    validates :short_url, presence: true, uniqueness: true 

    belongs_to :submitter,
    class_name: 'User',
    foreign_key: :user_id,
    primary_key: :id   
    
    
    def self.random_code
       self.short_url = loop do 
        random_url =  SecureRandom.urlsafe_base64(22, true)
        break random_url unless self.ShortenedUrl.exists?(short_url: random_url)
       end
    end
    def create!(user, long_url)
        user.id  
    end


    
end


