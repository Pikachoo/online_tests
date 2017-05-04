class Test < ApplicationRecord
  has_many :questions

  validates :name, presence: true

  scope :published, -> {where(is_public: true)}

end
