class Post < ApplicationRecord
    belongs_to :user
    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user

    # コメント機能
    has_many :comments, dependent: :destroy

    mount_uploader :image, ImageUploader
end
