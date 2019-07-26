class AddColumnToEventMaps < ActiveRecord::Migration[5.2]
  def change
  	add_column :event_maps, :lat, :integer
  	add_column :event_maps, :lng, :integer
  end
end
