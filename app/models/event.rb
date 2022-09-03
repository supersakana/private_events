class Event < ApplicationRecord
  has_many :event_attendings, foreign_key: :attended_event_id
  has_many :attendees, through: :event_attendings, source: :attendee
  belongs_to :creator, class_name: 'User'

  validates :date, presence: true
  validates :title, presence: true
  validates :description, presence: true

  def self.future
    where('date >= ?', Time.now)
  end

  def self.past
    where('date < ?', Time.now)
  end
end
