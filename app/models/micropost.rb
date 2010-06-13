class Micropost < ActiveRecord::Base
	attr_accessible :content

	belongs_to :user
	default_scope :order => 'created_at DESC'

	validates_presence_of	:content, :user_id
	validates_length_of	:content, :maximum => 140
end
