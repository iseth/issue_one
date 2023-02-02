class Account < ApplicationRecord
  has_many :location_addresses, -> { where(address_type: :account_locations) }, class_name: "Address", as: :addressable
  # belongs_to :main_location_address, class_name: "Address", optional: true
  has_one :main_location_address, -> { where(address_type: :account_location) }, class_name: "Address", as: :addressable
end
