class Event < ActiveRecord::Base
	 validates :name, presence: true, length: {maximum: 50}
	 validates :datetime, presence: true
	 validates :location, presence: true
	 validates :contact, presence: true
	 validates :description, presence: true
	 validates :codeword, presence: true
end
