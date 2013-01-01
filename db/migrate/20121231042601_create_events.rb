class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :society
      t.references :user
      t.string :title
      t.string :type
      t.string :location
      t.date :date
      t.time :start_time
      t.time :finish_time
      t.text :description

      t.timestamps
    end
    add_index :events, :society_id
    add_index :events, :user_id
  end
end
