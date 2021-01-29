User.destroy_all
User.create :email => 'trent@trent.com', :password => 'chicken', :name => 'Trent'
User.create :email => 'bec@trent.com', :password => 'chicken', :name => "Bec"
puts "#{ User.count } users."

Destination.destroy_all
Destination.create(:name => 'Boydtown Beach', :location => 'Sapphire Coast', :activity => "Beaches, Fishing", :familyf => 'Great for the kids',:image => 'https://media-cdn.tripadvisor.com/media/photo-s/1a/14/13/fc/sunrise.jpg')
Destination.create(:name => 'Pound Bend', :location => 'Warrandyte State Park', :activity => "Lilos, Camping, Picnic", :familyf => 'Indeed', :image => 'https://www.bushwalkingblog.com.au/wp-content/uploads/2009/05/poundbend.jpg')

Destination.create(:name => 'Ocean Beach Holiday Resort', :location => 'Umina Beach', :activity => 'Splashaway Bay Waterpark, Adventure Playground, Bike/Buggy Hire', :familyf => 'Heaps of fun family stuff to do', :image => 'https://media-cdn.tripadvisor.com/media/photo-s/0f/60/1f/60/photo6jpg.jpg')
puts "#{ Destination.count } destinations."

Comment.destroy_all
Comment.create(:name => 'Trent', :blog => 'Such a beautiful location. Great for the kids', :date => '2019-07-22' )
Comment.create(:name => 'Bec', :blog => 'The laces were out', :date => '2016-07-22' )
puts "#{ Comment.count } comments."
