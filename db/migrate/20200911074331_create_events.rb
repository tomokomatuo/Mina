class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.date :datetime
      t.string :place
      t.text :to_do
      
      t.timestamps
    end
  end
end
