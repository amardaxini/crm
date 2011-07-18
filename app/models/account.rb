class Account < ActiveRecord::Base
	has_many :users
  has_one :owner,:class_name => "User",:foreign_key => "owner_id"
end
