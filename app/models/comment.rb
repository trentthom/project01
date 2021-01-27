class Comment < ActiveRecord::Base
  belongs_to :destination, :optional => true #without the optional => true rails thinks it is an error to create a comment without saying who made the comment AT the exact moment it's created
  belongs_to :user, :optional => true
end
