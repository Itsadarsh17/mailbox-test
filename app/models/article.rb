class Article < ApplicationRecord
  def self.ransackable_attributes(_auth_object = nil)
    %w[author created_at description id title updated_at url]
  end
end
