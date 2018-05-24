class AddSortingOrderToPowerProviders < ActiveRecord::Migration[5.0]
  def change
    add_column :power_providers, :sorting_order, :integer
  end
end
