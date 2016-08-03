class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :location, :aliases, :biography, :user_id, :username, :projects

  def projects
    object.projects.pluck(:id)
  end
end
