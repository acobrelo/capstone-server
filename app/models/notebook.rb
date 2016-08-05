class Notebook < ActiveRecord::Base
  belongs_to :project, foreign_key: :project_id, inverse_of: :notebooks
  has_many :items, dependent: :destroy
end
