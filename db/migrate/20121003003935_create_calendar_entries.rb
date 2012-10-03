class CreateCalendarEntries < ActiveRecord::Migration
  def change
    create_table :calendar_entries do |t|
      t.string :title
      t.text :entry
      t.date :entry_at

      t.timestamps
    end
  end
end
