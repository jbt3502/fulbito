class User < ApplicationRecord
	authenticates_with_sorcery!
	validates :password, length: { minimum: 3 }
	validates :password, confirmation: true
	validates :email, uniqueness: true, email_format: { message: 'has invalid format' }
	belongs_to :persona
	belongs_to :user_type
end
