class Movie < ActiveRecord::Base
  #validates :name, length: {minimum: 2}
  #validates :bio, length: {maximum: 1000,
  #  too_long: "%{count} characteres is the maximum allowed"}
  #validates :passoword, length: {in: 6..20}
  #validates :registration_number, length: {is: 6}
  #validates :title, presence: true
  #validates :title, uniqueness: true

  validates :title, presence: true
  validates :title,  uniqueness:{ scope: :release_date,
    message: "Should not have two movies with same name and release_date" }

    belongs_to :director, class_name: "Director", foreign_key: "director_id"
end
