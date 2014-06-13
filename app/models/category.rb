class Category < ActiveRecord::Base
  has_many :shares
  has_many :events, through: :shares
end
