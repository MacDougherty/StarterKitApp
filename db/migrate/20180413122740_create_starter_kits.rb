class CreateStarterKits < ActiveRecord::Migration[5.1]
  def change
    create_table :starter_kit_starter_kits do |t|
      t.string :apiotics_instance
      t.string :name
      t.timestamps
    end
  end
end