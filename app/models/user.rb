class User < ActiveRecord::Base 
	has_many :articles
<<<<<<< HEAD
=======
	before_save {self.email = email.downcase}
>>>>>>> userarticle-assocication
	validates :username , presence: true,uniqueness: {case_sensitive: false}, length: {minimum: 4,maximum: 25}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	validates :email, presence: true, length: {maximum: 100},
				uniqueness: {case_sensitive: false},
				format: {with: VALID_EMAIL_REGEX}
end