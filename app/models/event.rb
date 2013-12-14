class Event < ActiveRecord::Base
	 validates :name, presence: true, length: {maximum: 50}
	 validates :datetime, presence: true
	 validates :location, presence: true
	 validates :contact, presence: true
	 validates :description, presence: true
	 validates :codeword, presence: true
	 has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
