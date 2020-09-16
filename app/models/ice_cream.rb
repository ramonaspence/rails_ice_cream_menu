class IceCream < ApplicationRecord
    validates :name, presence: true,
    length: { minimum: 3 } 
    validates :description, presence: true,
    length: { minimum: 12 }
    validates :date_churned, presence: true,
    unless: Proc.new { |i| i.date_churned > DateTime.now }
end