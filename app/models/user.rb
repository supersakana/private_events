class User < ApplicationRecord
  has_many :event_attendings, foreign_key: :attendee_id
  has_many :attended_events, through: :event_attendings
  has_many :events, foreign_key: 'creator_id', class_name: 'Event', dependent: :destroy

  validates :username, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
