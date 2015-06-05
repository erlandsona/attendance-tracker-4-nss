class Tardy < ActiveRecord::Base
  has_many :students_tardies
  has_many :students, through: :students_tardies
end
