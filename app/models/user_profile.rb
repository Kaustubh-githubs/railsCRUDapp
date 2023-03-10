class UserProfile < ApplicationRecord
  validates :email, presence: true, uniqueness: true, length: { maximum: 255 }
end
