class Student < ActiveRecord::Base

  validates :name,
            length: { minimum: 1 },
            uniqueness: true,
            presence: true

end
