class Task < ActiveRecord::Base
  attr_accessible :task
  validates :task, presence: true
end
