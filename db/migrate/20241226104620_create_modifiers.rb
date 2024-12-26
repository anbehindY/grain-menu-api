class CreateModifiers < ActiveRecord::Migration[8.0]
  def change
    create_table :modifiers do |t|
      t.integer :display_order, default: 0
      t.integer :default_quantity, default: 0
      t.float :price_override

      t.timestamps
    end
  end
end
