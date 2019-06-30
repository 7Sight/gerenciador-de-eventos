class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :string
      t.string :event_ministrant
      t.string :text
      t.string :event_credits
      t.string :text
      t.string :event_slots
      t.string :integer
      t.string :event_local
      t.string :text
      t.string :event_date
      t.string :text
      t.string :event_hour
      t.string :text
      t.string :event_description
      t.string :text

      t.timestamps
    end
  end
end
