class AddStatusToSwitch < ActiveRecord::Migration[5.0]
  def change
    add_column :switches, :status, :integer
  end
end
