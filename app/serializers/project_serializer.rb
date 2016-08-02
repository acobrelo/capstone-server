class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre, :description, :completed, :started_on, :target_finish, :inProgress, :created_at
end
