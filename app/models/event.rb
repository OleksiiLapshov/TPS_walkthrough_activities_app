class Event < ApplicationRecord
  def free?
    price.to_f.zero? || price.blank? || price.nil?
  end
end
