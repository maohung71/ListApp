class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.integer :category_id
      t.integer :list_id

      t.timestamps
    end
  end
end
