class Image < ApplicationRecord
  validates :artist, presence: true

  validates :title, presence: true
  # validates :title, length: {minimum: 3, maximum: 20}
  validate :title_length

  validates :url, presence: true
  #               uniqueness: true
  validate :url_unique
  validate :url_http

  def self.newest_first
    Image.order("created_at DESC")
  end

  def self.most_recent_five
    Image.newest_first.limit(5)
  end

  def self.created_before(time)
    Image.where("created_at < ?", time)
  end

private
  def title_length
    if title
      if title.length > 20 || title.length < 3
        errors.add(:title, 'aint nay booty. Shiver me timbers! this way too long or short.')
      end
    end
  end
  def url_unique
    images = Image.all
    images.each do |image|
      if image.url == self.url
        errors.add(:url, 'nay good. Ive sum grog of this kind.')
      end
    end
  end

  def url_http
    if !(self.url =~ /\A[h][t][t][p][:]\/\//)
      errors.add(:url, "is nay good. Avast! put 'http://' to the beginnin'.")
    end
  end

end
