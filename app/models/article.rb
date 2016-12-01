class Article < ApplicationRecord

  has_many :comments, dependent: :destroy
  belongs_to :user
  belongs_to :node
  has_attached_file :article_img, styles: { index_img: "300x300>", show_img: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :article_img, content_type: /\Aimage\/.*\z/
end
