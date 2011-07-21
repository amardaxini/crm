class Account < ActiveRecord::Base
	has_many :users
	belongs_to :owner,:class_name => "User",:foreign_key => "owner_id"
	validates_presence_of :name
	validates_uniqueness_of :name

	accepts_nested_attributes_for :users, :reject_if => :all_blank,:allow_destroy => true
end
