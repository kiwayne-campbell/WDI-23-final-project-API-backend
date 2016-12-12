class CommentSerializer < ActiveModel::Serializer
  attributes :id, :title, :comment_date, :body, :convert
  has_one :user
  has_one :festival

  def convert(VARCHAR(24),GETDATE(),113)
    "#{created_at}"
  end
end
