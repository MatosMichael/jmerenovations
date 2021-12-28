class Invoice < ApplicationRecord
  belongs_to :client
  belongs_to :jobsite, class_name: "Address", foreign_key: "address_id"
  has_many :line_items
end
