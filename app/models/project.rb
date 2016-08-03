class Project < ActiveRecord::Base
  belongs_to :profile, foreign_key: :profile_id
  has_one :notebook
  before_create :build_default_notebook

  private

  def build_default_notebook
    build_notebook
    true
  end

end
