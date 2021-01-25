class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.text :name
      t.text :location
      t.text :activity
      t.text :familyf
      t.integer :user_id
    end
  end
end
