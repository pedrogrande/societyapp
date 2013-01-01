class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.references :user
      t.string :type
      t.references :society

      t.timestamps
    end
    add_index :posts, :user_id
    add_index :posts, :society_id
  end
end
