class Spree::Author < ActiveRecord::Base
  attr_accessible :biography, :name, :permalink, :photo, :videos_attributes

  has_many :videos, :order => 'position ASC', :as => :watchable
  accepts_nested_attributes_for :videos, :allow_destroy => true, :reject_if => proc { |attributes| attributes['youtube_ref'].blank? }


  make_permalink :order => :name

  has_attached_file :photo,
    :path => ":rails_root/public/spree/authors/:id/:style/:basename.:extension",
    :url => '/spree/authors/:id/:style/:basename.:extension',
    :styles => { :mini => '48x48>', :small => '180x200>', :author => '320x300>', :large => '600x600>' },
    :default_style => :author,
    :convert_options => { :all => '-strip' }

  def to_param
    permalink.present? ? permalink : (permalink_was || name.to_s.to_url)
  end
end
