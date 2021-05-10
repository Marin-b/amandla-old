class Place < ApplicationRecord
  include CloudinaryHelper

  belongs_to :category
  belongs_to :user
  has_many :reviews

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_one_attached :banner
  has_many_attached :photos

  acts_as_taggable_on :tags

  def banner_url
    if banner.attached?
      return cl_image_path banner.key
    end

    return cl_image_path "amandla_logo"
  end

  def avg_rating
    (reviews.average(:rating) || 0).round(2)
  end
end
