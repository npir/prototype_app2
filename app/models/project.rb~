class Project < ActiveRecord::Base
  attr_accessible :description, :name
  belongs_to :user
  
  validates :user_id, presence: true
  
  default_scope order: 'projects.created_at DESC'
end
