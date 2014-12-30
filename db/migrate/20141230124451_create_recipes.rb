class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :title
      t.string :serving_size
      t.string :cook_time
      t.text :description
      t.text :ingredients
      t.text :instructions
      t.string :image_url

      t.timestamps
    end
  end
end
