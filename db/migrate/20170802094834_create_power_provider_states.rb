class CreatePowerProviderStates < ActiveRecord::Migration[5.0]
  def change
    create_table :power_provider_states do |t|
      t.references :state, foreign_key: true
      t.references :power_provider, foreign_key: true

      t.timestamps
    end
  end
end
