class CreateEventMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :event_maps do |t|
      t.string :title
      t.string :address
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
