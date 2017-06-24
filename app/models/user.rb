class User < ApplicationRecord
    attr_accessor :password, :password_confirmation
    validates :password, presence: true, length: { minimum: 6 }

    has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
  validates_attachment :image, :presence => true,
  :content_type => { content_type: ["image/jpg","image/jpeg","image/png","image/gif"] },
  :size => { :in => 0..100.megabytes }
end