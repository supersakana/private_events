class User < ApplicationRecord
  has_many :events, foreign_key: "creator_id", class_name: "Event", dependent: :destroy

  validates :username, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
