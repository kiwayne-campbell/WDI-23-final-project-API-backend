class CommentSerializer < ActiveModel::Serializer
  attributes :id, :title, :comment_date, :body
  belongs_to :user
  belongs_to :festival
end
