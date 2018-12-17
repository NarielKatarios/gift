class CreateCategoriesPresents < ActiveRecord::Migration[5.1]
  def change
    create_table :categories_presents do |t|
      t.references :present
      t.references :category

      t.timestamps
    end
  end
end
