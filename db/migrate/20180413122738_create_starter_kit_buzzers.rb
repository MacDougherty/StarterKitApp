class CreateStarterKitBuzzers < ActiveRecord::Migration[5.1]
  def change
    create_table :starter_kit_buzzers do |t|
      
      t.boolean :buzzer
      t.boolean :buzzer_ack
      t.boolean :buzzer_complete
      
      
      t.string :port_number
      t.boolean :port_number_ack
      t.boolean :port_number_complete
      
      
      t.integer :starter_kit_id
      t.timestamps
    end
  end
end