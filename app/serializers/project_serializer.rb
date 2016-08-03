class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre, :description, :completed, :started_on, :target_finish, :created_at, :profile_id
end
