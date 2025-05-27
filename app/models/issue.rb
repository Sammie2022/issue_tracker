class Issue < ApplicationRecord
  belongs_to :project

  STATUSES = ['New', 'In Progress', 'Closed']

  validates :title, presence: true
  validates :status, inclusion: { in: STATUSES }
  validates :priority, inclusion: {in 1..5}
end
