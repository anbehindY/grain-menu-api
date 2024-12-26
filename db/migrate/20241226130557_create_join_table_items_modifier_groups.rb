class CreateJoinTableItemsModifierGroups < ActiveRecord::Migration[8.0]
  def change
    create_join_table :items, :modifier_groups do |t|
      # t.index [:item_id, :modifier_group_id]
      # t.index [:modifier_group_id, :item_id]
    end
  end
end
