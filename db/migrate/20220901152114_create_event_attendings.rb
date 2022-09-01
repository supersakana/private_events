class CreateEventAttendings < ActiveRecord::Migration[7.0]
  def change
    create_table :event_attendings do |t|
      t.references :user, index: true, foreign_key: true
      t.references :event, index: true, foreign_key: true

      t.timestamps
    end
  end
end
