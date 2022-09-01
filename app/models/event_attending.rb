class EventAttending < ApplicationRecord
    belongs_to :attendee, class_name: "User"
    belongs_to :attended_event, class_name: "Post"
end
