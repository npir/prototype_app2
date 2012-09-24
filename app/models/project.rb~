# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  user_id     :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Project < ActiveRecord::Base
  attr_accessible :description, :name, :document, :remote_document_url
  belongs_to :user
  mount_uploader :document, DocumentUploader
  
  validates :user_id, presence: true
  validates :name, presence: true
  
  default_scope order: 'projects.created_at DESC'
end
