class Tag < ActiveRecord::Base
  has_many :categorizations
end
