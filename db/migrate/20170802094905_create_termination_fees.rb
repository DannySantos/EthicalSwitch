class CreateTerminationFees < ActiveRecord::Migration[5.0]
  def change
    create_table :termination_fees do |t|
      t.references :state, foreign_key: true
      t.references :power_provider, foreign_key: true
      t.string :amount

      t.timestamps
    end
  end
end
