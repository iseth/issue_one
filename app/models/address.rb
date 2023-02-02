class Address < ApplicationRecord
  belongs_to :addressable, polymorphic: true
  enum address_type: [:billing, :account_location]
end
