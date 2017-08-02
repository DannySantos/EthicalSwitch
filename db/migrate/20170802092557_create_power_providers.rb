class CreatePowerProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :power_providers do |t|
      t.string :name
      t.string :major_shareholder
      t.string :major_shareholder_base
      t.string :parent_company
      t.string :primary_fuel_source
      t.string :carbon_emissions
      t.string :renewable_energy
      t.boolean :new_renewable_energy_investment
      t.boolean :no_csg_investment
      t.string :greenpower_available
      t.string :ombudsman_complaints
      t.string :dual_fuel
      t.float :greenpeace_ranking
      t.float :ethical_switch_rating

      t.timestamps
    end
  end
end
