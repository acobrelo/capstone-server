class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :location, :aliases, :biography
end
