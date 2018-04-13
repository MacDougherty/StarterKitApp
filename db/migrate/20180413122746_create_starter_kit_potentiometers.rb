class CreateStarterKitPotentiometers < ActiveRecord::Migration[5.1]
  def change
    create_table :starter_kit_potentiometers do |t|
      
      t.integer :position, limit: 4
      t.boolean :position_ack
      t.boolean :position_complete
      
      
      t.string :port_number
      t.boolean :port_number_ack
      t.boolean :port_number_complete
      
      
      t.integer :starter_kit_id
      t.timestamps
    end
  end
end