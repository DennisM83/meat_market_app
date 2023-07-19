class AddRecipeToChickenCuts < ActiveRecord::Migration[7.0]
  def change
    add_column :chicken_cuts, :recipe, :text
  end
end
