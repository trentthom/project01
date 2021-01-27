class Destination < ActiveRecord::Base
  belongs_to :user, :optional => true
  has_many :comments
end
