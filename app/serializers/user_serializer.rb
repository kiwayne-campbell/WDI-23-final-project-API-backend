class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :festival_ids, :first_name, :last_name, :dob, :user_location, :bio, :image

  has_many :comments
  has_many :festivals
end
