class CreateSwitches < ActiveRecord::Migration[5.0]
  def change
    create_table :switches do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.references :partner, foreign_key: true
      t.references :charity, foreign_key: true
      t.integer :referrer

      t.timestamps
    end
  end
end
