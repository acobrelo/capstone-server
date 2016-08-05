class ItemSerializer < ActiveModel::Serializer
  attributes :id, :content, :done, :notebook_id
end
