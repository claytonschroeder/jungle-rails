class Product < ActiveRecord::Base

  monetize :price_cents, numericality: true
  mount_uploader :image, ProductImageUploader

  has_many :reviews
  belongs_to :category

  validates :name, presence: true
  validates :price_cents, presence: true, numericality: true
  validates :quantity, presence: true, numericality: true
  validates :category, presence: true


  def average_review
    total = 0
    reviews.each do |review|
      total = total + review.rating
    end
    total / reviews.count.to_f
  end

end
