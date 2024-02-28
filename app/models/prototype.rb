class Prototype < ApplicationRecord
 # アソシエーション 
  belongs_to :user
  has_many :comments, dependent: :destroy


  # 各レコードとファイルを1対1の関係で紐づけるメソッド
  has_one_attached :image

  # バリデーション
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true
end
