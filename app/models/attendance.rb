class Attendance < ApplicationRecord
    after_create :attendance_send
    belongs_to :users
    belongs_to :events

    def attendance_send
        AttendanceMAiler.attendance_email(self).deliver_now
    end
end
