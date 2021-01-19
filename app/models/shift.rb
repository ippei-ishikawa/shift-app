class Shift < ApplicationRecord
  belongs_to :user

  with_options presence: true do
  validates :user_id
  validates :day
  validates :time_type
  end
end
