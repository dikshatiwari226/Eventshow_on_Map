class AddColToEvents < ActiveRecord::Migration[5.2]
  def change
  	add_column :event_maps, :street, :string
  	add_column :event_maps, :street_number, :string
  	add_column :event_maps, :postal_code, :string
  	add_column :event_maps, :city, :string
  	add_column :event_maps, :state, :string
  	add_column :event_maps, :country, :string
  end
end
