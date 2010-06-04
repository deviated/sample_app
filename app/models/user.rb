class User < ActiveRecord::Base
	attr_accessor	:password
	attr_accessible :name, :email, :password, :password_confirmation

	EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates_presence_of	:name, :email
	validates_length_of	:name, :maximum => 50
	validates_format_of	:email, :with => EmailRegex
	validates_uniqueness_of	:email, :case_sensitive => false
	
	#automatically create the virtual attriubte 'password_confirmation'.
	validates_confirmation_of :password

	#password validations
	validates_presence_of	:password
	validates_length_of	:password, :within => 6..40
end
