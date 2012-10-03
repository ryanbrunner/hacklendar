class CreateCalendarEntries < ActiveRecord::Migration
  def change
    create_table :calendar_entries do |t|
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
