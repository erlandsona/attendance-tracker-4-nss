class Student < ActiveRecord::Base

  authenticates_with_sorcery!

  validates :name,
            length: { minimum: 1 },
            uniqueness: true,
            presence: true

end
