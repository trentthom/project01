User.destroy_all
User.create :email => 'trent@trent.com', :password => 'chicken'
User.create :email => 'bec@trent.com', :password => 'chicken'
puts "#{ User.count } users."

Destination.destroy_all
Destination.create(:name => 'Boydtown Beach', :location => 'Sapphire Coast', :activity => "Beaches, Fishing", :familyf => 'Great for the kids')
Destination.create(:name => 'Pound Bend', :location => 'Warrandyte State Park', :activity => "Lilos, Camping, Picnic", :familyf => 'Indeed')
puts "#{ Destination.count } destinations."

Comment.destroy_all
Comment.create(:name => 'Jimbo Jones', :blog => 'Such a beautiful location. Great for the kids', :date => '2019-07-22' )
Comment.create(:name => 'Ray Finckle', :blog => 'The laces were out', :date => '2016-07-22' )
puts "#{ Comment.count } comments."
