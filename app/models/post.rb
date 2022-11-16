class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: ["Fiction", "Non-Fiction"]
  validate :title_is_clickbait

  def title_is_clickbait
    unless title.to_s.match(/Won't Believe|Guess|Secret|Top [0-9]\+/)
      errors.add(:title, "This is not sufficiently click-bait-y")        
    end
  end

end