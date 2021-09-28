class User < ApplicationRecord
  before_validation :generate_api_key, on: :create

  validates :email, presence: true, uniqueness: true
  validates :api_key, presence: true, uniqueness: true

  has_secure_password

  def generate_api_key
    self.api_key = SecureRandom.hex(16)
  end
end
