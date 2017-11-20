class Book < ApplicationRecord
  searchkick
  belongs_to :user
  belongs_to :category, optional: true
  has_many :reviews

  validates :category_id, presence: true, length: {
                                                    maximum: 21,
                                                    too_long: ": Must select a category"
                                                    }
  validates :title, presence: true
  validates :description, presence: true
  validates :author, presence: true

  has_attached_file :book_img, :styles => { :book_index => "250x350>", :book_show => "325x475>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :book_img, :content_type => /\Aimage\/.*\Z/
  self.per_page = 10
end
