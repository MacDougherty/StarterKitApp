class CreateStarterKitUltrasonicRangeSensors < ActiveRecord::Migration[5.1]
  def change
    create_table :starter_kit_ultrasonic_range_sensors do |t|
      
      t.integer :range, limit: 8
      t.boolean :range_ack
      t.boolean :range_complete
      
      
      t.string :port_number
      t.boolean :port_number_ack
      t.boolean :port_number_complete
      
      
      t.integer :starter_kit_id
      t.timestamps
    end
  end
end