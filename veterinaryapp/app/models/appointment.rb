class Appointment < ActiveRecord::Base

has_one :doctor, foreign_key: 'id'


  validates :date, presence: true
  validate :date_in_past , :on => :create
  validates :pet, presence: true
  validates :customer, presence: true
  validates :reason, presence: true

 private

  def date_in_past
    if date < Date.today
      self.errors.add(:base, "The date you have selected is in the past!")
    end
  end

end