class ShortenedUrl < ApplicationRecord
    validates :long_url, presence: true, uniqueness: true

    def self.random_code
        SecureRandom.urlsafe_base64
    end
end