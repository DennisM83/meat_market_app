class AddRecipeToBeefCuts < ActiveRecord::Migration[7.0]
  def change
    add_column :beef_cuts, :recipe, :text
  end
end
