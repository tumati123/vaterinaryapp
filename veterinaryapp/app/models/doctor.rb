class Doctor < ActiveRecord::Base
has_many :appointments

  validates :name, presence: true,
            length: {maximum: 35}

  validates_length_of :zip, :maximum => 5
end