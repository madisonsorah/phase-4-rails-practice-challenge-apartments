class Lease < ApplicationRecord
    belongs_to :apartment
    belongs_to :tenant

    validates :rent, numericality: {only_integer: true}
end
