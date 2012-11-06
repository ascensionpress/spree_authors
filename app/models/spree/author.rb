class Spree::Author < ActiveRecord::Base
  attr_accessible :biography, :name, :permalink, :photo

  make_permalink :order => :name

  has_attached_file :photo, :path => ":rails_root/private/authors/:id/:basename.:extension"

  def to_param
    permalink.present? ? permalink : (permalink_was || name.to_s.to_url)
  end
end
