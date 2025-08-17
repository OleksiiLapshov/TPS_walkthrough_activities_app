class Event < ApplicationRecord
  def free?
    price.to_f.zero? || price.blank? || price.nil?
  end

  def self.upcoming
    where("starts_at > ?", Time.now).order("starts_at")
  end
end
