class Recipe < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true

  # include Paperclip::Glue
  has_attached_file :image, styles: { medium: "400x400#>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
