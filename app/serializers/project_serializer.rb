class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre, :description, :completed, :started_on, :target_finish, :notebook, :created_at, :profile_id, :public

  def notebooks
    object.notebooks.pluck(:id)
  end
end
