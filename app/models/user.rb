class User < ApplicationRecord
	devise :database_authenticatable, :registerable,
			:recoverable, :rememberable, :trackable, :validatable

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true      

	has_many :articles, dependent: :destroy   

	def full_name
		first_name.capitalize + " " + last_name.capitalize rescue "Guest user"
	end

end
