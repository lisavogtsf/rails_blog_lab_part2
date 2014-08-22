class Post < ActiveRecord::Base
	has_many :comments
	has_many :categorizations
	has_many :tags, :through => :categorizations
end
