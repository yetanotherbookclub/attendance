class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.references :user, index: true
      t.references :meeting, index: true
      t.boolean :attended, default: false

      t.timestamps null: false
    end
    add_foreign_key :attendances, :users
    add_foreign_key :attendances, :meetings
  end
end
