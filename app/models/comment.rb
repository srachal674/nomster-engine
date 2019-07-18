class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :place 

  Ratings = {
    'one star': '1_star',
    'two stars': '2_stars',
    'three stars': '3_stars',
    'four stars': '4_stars',
    'five stars': '5_stars'
  }

  def humanized_rating
    Ratings.invert[self.rating]
  end

end