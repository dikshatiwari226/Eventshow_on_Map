class AddColumnsToRouters < ActiveRecord::Migration[5.2]
  def change
    add_column :routers, :address, :string
  end
end
