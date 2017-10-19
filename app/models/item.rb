class Item < ApplicationRecord
  has_attachment :photo
  belongs_to :user
  has_many :bookings
  validates :name, :good_until, :category, :quantity, :indicator, :description, :price,  presence: true
  validates :quantity, :price, numericality: { only_integer: true }
  validates :category, inclusion: { in: ["vegetable", "fruit"], allow_nil: false }
  validates :indicator, inclusion: { in: ["kg", "g"], allow_nil: false }

  # before_save :capitalize_item_name
  before_save { |user| user.name.capitalize }

  def self.search(query)
    where("name LIKE ?", "%#{query}%")
  end

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  private

  def capitalize_item_name
    down = self.name.downcase
    return down.capitalize
  end
end
