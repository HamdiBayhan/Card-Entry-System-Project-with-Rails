class Member < ApplicationRecord
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


validates :name, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
validates :lastname, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
validates :cardId, uniqueness: true
validates :email, uniqueness: true

end
