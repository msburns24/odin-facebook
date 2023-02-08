class User < ApplicationRecord
  # Associations
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy

  # Validations
  validates :username, presence: true

  def to_param
    username
  end
end
