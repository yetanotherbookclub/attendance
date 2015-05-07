class Meeting < ActiveRecord::Base
  has_many :attendance
  has_many :users, through: :attendance
end
