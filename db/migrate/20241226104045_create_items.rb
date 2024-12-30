class CreateItems < ActiveRecord::Migration[8.0]
  def change
    create_table :items do |t|
      t.string :item_type
      t.string :label
      t.string :description
      t.float :price
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
