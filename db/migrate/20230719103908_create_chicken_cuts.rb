class CreateChickenCuts < ActiveRecord::Migration[7.0]
  def change
    create_table :chicken_cuts do |t|
      t.string :name
      t.text :muscle_anatomy
      t.text :description
      t.text :cut_type
      t.text :slicing_instructions

      t.timestamps
    end
  end
end
