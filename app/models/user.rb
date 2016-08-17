class User < ApplicationRecord
  validates(:name,  presence: true, 
                    length: { minimum: 3 },
                    allow_nil: true)
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates(:email, presence: true, 
                    length: { minimum: 5}, 
                    format: { with: VALID_EMAIL_REGEX},
                    uniqueness: {case_sensitive:false},
                    allow_nil: true)
                    
  has_secure_password
  validates(:password,  presence: true, 
                    length: { minimum: 8, maximum: 15 },
                    allow_nil: true)
end
