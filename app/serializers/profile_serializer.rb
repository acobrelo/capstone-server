class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :location, :aliases, :biography, :user_id
end
