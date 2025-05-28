# app/models/project.rb
class Project < ApplicationRecord
  has_many :issues, dependent: :destroy

  validates :title, presence: true
end

# app/models/issue.rb
class Issue < ApplicationRecord
  belongs_to :project

  STATUSES = ['New', 'In Progress', 'Closed']

  validates :title, presence: true
  validates :status, inclusion: { in: STATUSES }
  validates :priority, inclusion: { in: 1..5 }
end
