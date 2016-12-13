class Product < ActiveRecord::Base

  monetize :price_cents, numericality: true
  mount_uploader :image, ProductImageUploader

  has_many :reviews
  belongs_to :category

  validates :name, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :category, presence: true


  def average_review
    total = 0
    self.reviews.each do |review|
      total = total + review.rating
    end
    total / self.reviews.count.to_f
  end

end
