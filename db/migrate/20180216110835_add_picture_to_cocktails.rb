class AddPictureToCocktails < ActiveRecord::Migration[5.1]
  def change
    add_column :cocktails, :picture, :string
  end
end
