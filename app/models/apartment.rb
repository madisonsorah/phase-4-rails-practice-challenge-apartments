class Apartment < ApplicationRecord
    has_many :tenants
    has_many :leases

    validates :number, numericality: {only_integer: true}
end
