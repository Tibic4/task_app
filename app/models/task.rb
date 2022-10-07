class Task < ApplicationRecord
  validates :name, presence: true

  validate :validate_name_not_including_comma

  def validate_name_not_including_comma
    errors.add(:name, 'cannot include comma') if name&.include?(',')
  end
end
