class Event < ApplicationRecord

  validates :name, :location, presence: true
  validates :description, length: { minimum: 25 }
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :capacity, numericality: { only_integer: true, greater_than: 0 }
  validates :image_file_name, format: {
    with: /\w+\.(jpg|png)\z/i,
    message: "Wrong file extension! Must be PNG or JPG!"
  }

  def free?
    price.to_f.zero? || price.blank? || price.nil?
  end

  def self.upcoming
    where("starts_at > ?", Time.now).order("starts_at")
  end
end
