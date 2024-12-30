class CreateSections < ActiveRecord::Migration[8.0]
  def change
    create_table :sections do |t|
      t.string :label
      t.string :description
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
