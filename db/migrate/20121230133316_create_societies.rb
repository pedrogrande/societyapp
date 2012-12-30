class CreateSocieties < ActiveRecord::Migration
  def change
    create_table :societies do |t|
      t.string :name, :uniqueness => true, :null => false
      t.string :slug

      t.timestamps
    end
  end
end
