class CreateCharities < ActiveRecord::Migration[5.0]
  def change
    create_table :charities do |t|
      t.string :name
      t.string :short_name
      t.string :description

      t.timestamps
    end
  end
end
