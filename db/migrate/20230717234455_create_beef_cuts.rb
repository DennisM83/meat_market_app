class CreateBeefCuts < ActiveRecord::Migration[7.0]
  def change
    create_table :beef_cuts do |t|
      t.string :name
      t.text :muscle_anatomy
      t.text :description
      t.text :cut_type
      t.text :slicing_instructions

      t.timestamps
    end
  end
end
