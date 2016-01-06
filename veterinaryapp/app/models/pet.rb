class Pet < ActiveRecord::Base

  has_one :typeofpet, primary_key: "typeofpet_id", foreign_key: "id"
  has_many :appointments, primary_key: "appointmnet_id", foreign_key: "id"

  validates :name, presence: true
  validates :breed, presence: true
  validates :age, presence: true
  validates :weight, presence: true
  validates :lastvisit, presence: true
end