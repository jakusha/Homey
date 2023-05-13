class Project < ApplicationRecord
    has_many :comments, dependent: :destroy

    validates :title, presence: true
    validates :description, presence: true, length: { minimum: 10 }

    VALID_STATUSES = ['notStarted', 'inProgress', 'completed', 'cancelled']

    validates :status, inclusion: { in: VALID_STATUSES }
end
