class AddLineToPartner < ActiveRecord::Migration[5.0]
  def change
    add_column :partners, :line, :string
  end
end
