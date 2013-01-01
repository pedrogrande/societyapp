class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.references :user
      t.date :dob
      t.string :sex
      t.string :city
      t.string :country
      t.string :profile_pic
      t.text :about_me

      t.timestamps
    end
    add_index :user_profiles, :user_id
  end
end
