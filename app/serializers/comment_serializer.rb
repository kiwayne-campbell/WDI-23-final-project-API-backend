class CommentSerializer < ActiveModel::Serializer
  attributes :id, :title, :comment_date, :body
  has_one :user
  has_one :festival

end
