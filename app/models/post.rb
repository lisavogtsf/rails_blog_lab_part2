class Post < ActiveRecord::Base
  has_many :categorizations
end
