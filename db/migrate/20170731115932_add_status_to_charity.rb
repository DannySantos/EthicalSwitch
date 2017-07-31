class AddStatusToCharity < ActiveRecord::Migration[5.0]
  def change
    add_column :charities, :status, :integer
  end
end
