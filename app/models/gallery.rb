class Gallery < ActiveRecord::Base
  has_attached_file :image, styles: { large:'800x800>', medium: '400x400>', thumb: '200x200>' },
                            default_url: '/images/:style/missing.png'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  has_many :photos
end
