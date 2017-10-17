class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :item
  has_one :seller, through: :item, source: :user

  validates :user, :item, :date, presence: true
  validates_uniqueness_of :user_id, :scope => [:seller]
end
