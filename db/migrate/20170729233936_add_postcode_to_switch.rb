class AddPostcodeToSwitch < ActiveRecord::Migration[5.0]
  def change
    add_column :switches, :postcode, :string
  end
end
