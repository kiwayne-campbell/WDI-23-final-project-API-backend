class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :comments, :festival_ids, :first_name, :last_name, :dob, :user_location, :bio, :image
end
