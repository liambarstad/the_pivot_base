class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.integer :status
      t.string :slug

      t.timestamps
    end
  end
end
