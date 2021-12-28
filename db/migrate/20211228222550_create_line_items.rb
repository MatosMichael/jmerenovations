class CreateLineItems < ActiveRecord::Migration[7.0]
  def change
    create_table :line_items do |t|
      t.decimal :price, precision: 8, scale: 2
      t.string :description

      t.timestamps
    end
  end
end
