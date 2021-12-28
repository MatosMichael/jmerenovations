class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.references :client, null: false, foreign_key: true
      t.date :deadline
      t.references :address, null: false, foreign_key: true
      t.references :line_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
