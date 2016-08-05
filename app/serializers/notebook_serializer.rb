class NotebookSerializer < ActiveModel::Serializer
  attributes :id, :name, :project_id, :items

  def items
    object.items.pluck(:id)
  end
end
