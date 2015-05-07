class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :title
      t.date :date
      t.string :location
      t.string :host
      t.time :time

      t.timestamps null: false
    end
  end
end
