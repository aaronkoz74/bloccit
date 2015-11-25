class Rating < ActiveRecord::Base
  has_many :topics
  has_many :posts

  def self.update_rating(rating_string)
    return Rating.none if rating_string.blank?
  end

  enum severity: [ :PG, :PG13, :R ]
end
