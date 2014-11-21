class User < ActiveRecord::Base
	has_many :reviews

	validates :email, :presence => true, :uniqueness => true
	validates :username, :presence => true, :uniqueness => true
end
