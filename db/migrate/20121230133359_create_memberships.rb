class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.references :user
      t.references :society

      t.timestamps
    end
    add_index :memberships, :user_id
    add_index :memberships, :society_id
  end
end
