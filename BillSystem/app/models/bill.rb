class Bill < ApplicationRecord
  belongs_to :client

    validates :note, presence: true
	validates :Data, presence: true
	validates :totalHour, presence: true
	validates :totalEuro, presence: true
end
