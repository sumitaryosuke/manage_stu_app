class Event < ApplicationRecord
belongs_to :user

  validates :name, length:{ maximum: 50 }, presence: true
  validates :content, length:{ maximum:2000 }, presence: true
  validates :start_day, presence: true
  validates :end_day, presence: true
  validate :start_day_should_be_before_end_day

  def start_day_should_be_before_end_day
    return unless start_day && end_day

    if start_day >= end_day
      error.add(:start_day, "は終了日よりも前の日にちに設定してください")
    end
  end
end
