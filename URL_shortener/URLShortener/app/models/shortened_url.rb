class ShortenedUrl < ApplicationRecord 
    validates :long_url, :short_url, :user_id, presence: true, uniqueness: true
    def random_code

    end
end


class SecureRandom

    def self.urlsafe_base64
        
    end

end