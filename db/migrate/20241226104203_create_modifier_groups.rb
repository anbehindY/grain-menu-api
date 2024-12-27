class CreateModifierGroups < ActiveRecord::Migration[8.0]
  def change
    create_table :modifier_groups do |t|
      t.references :item, null: false, foreign_key: true
      t.string :label
      t.integer :selection_required_min
      t.integer :selection_required_max

      t.timestamps
    end
  end
end
