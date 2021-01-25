class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :name
      t.text :blog
      t.date :date
      t.integer :destination_id
    end
  end
end
