class NoteSerializer < ActiveModel::Serializer
  attributes :id, :type, :title, :description
  belongs_to :contact
end
