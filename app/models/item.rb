class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :good_until, :category, :quantity, :indicator,  presence: true
  validates :quantity, numericality: { only_integer: true }
  validates :category, inclusion: { in: ["vegetable", "fruit"], allow_nil: false }
  validates :indicator, inclusion: { in: ["kg", "g"], allow_nil: false }
  def self.search(query)
    where("name LIKE ?", "%#{query}%")
  end

  has_attachments :photo
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
