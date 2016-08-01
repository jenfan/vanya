class Photo < ActiveRecord::Base
  has_attached_file :image, styles: { large:'800x800>', medium: '300x300>', thumb: '100x100>' },
                            default_url: '/images/:style/missing.png'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  before_save :set_photo_by_remote_url
  belongs_to :product
  belongs_to :gallery

  private

  def set_photo_by_remote_url
    self.image = open(URI.parse(remote_url)) if remote_url.present?
  end
end

