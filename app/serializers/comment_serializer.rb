class CommentSerializer < ActiveModel::Serializer
  attributes :id, :title, :comment_date, :body, :user
  belongs_to :user
  has_one :festival

end
