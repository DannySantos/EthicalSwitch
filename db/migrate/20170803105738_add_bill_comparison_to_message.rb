class AddBillComparisonToMessage < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :bill_comparison, :boolean
  end
end
