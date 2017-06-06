class Patient < ApplicationRecord
  validates_presence_of :name

  validates_uniqueness_of :name, case_sensitive: false

  has_many :appointments, dependent: :destroy
  has_many :doctors, through: :appointments
end
