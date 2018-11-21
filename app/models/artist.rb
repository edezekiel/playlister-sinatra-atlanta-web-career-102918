class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def slug
    self.name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  end

  def self.find_by_slug(slug_name)
    x = self.all.select do |artist|
      artist.slug == slug_name
    end
    x[0]
  end

  # instance.slug will slugify that artists name
  # then, if slug_name matches slugified name, return that artist
end
