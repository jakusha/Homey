class Comment < ApplicationRecord
  belongs_to :project

  validates :name, presence: true
  validates :comment, presence: true, length: { minimum: 3 }

end
