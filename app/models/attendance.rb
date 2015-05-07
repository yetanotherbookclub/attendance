class Attendance < ActiveRecord::Base
  belongs_to :user
  belongs_to :meeting

  validates :user_id, presence: true
  validates :meeting_id, presence: true
  validate :set_attended

  def set_attended
    update_attribute(:attended, true)
  end
end
