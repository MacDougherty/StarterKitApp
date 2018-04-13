class CreateStarterKitLightSensors < ActiveRecord::Migration[5.1]
  def change
    create_table :starter_kit_light_sensors do |t|
      
      t.integer :intensity, limit: 4
      t.boolean :intensity_ack
      t.boolean :intensity_complete
      
      
      t.string :port_number
      t.boolean :port_number_ack
      t.boolean :port_number_complete
      
      
      t.integer :starter_kit_id
      t.timestamps
    end
  end
end