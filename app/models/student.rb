class Student < ActiveRecord::Base

  has_many :students_tardies
  has_many :tardies, through: :students_tardies

  validates :name,
            length: { minimum: 1 },
            uniqueness: true,
            presence: true

end
