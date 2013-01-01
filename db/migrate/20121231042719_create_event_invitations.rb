class CreateEventInvitations < ActiveRecord::Migration
  def change
    create_table :event_invitations do |t|
      t.references :user
      t.references :event
      t.string :status, :default => 'invited'

      t.timestamps
    end
    add_index :event_invitations, :user_id
    add_index :event_invitations, :event_id
  end
end
