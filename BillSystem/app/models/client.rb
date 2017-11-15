class Client < ApplicationRecord

	has_many :bills

	validates :name, presence: true
	validates :surename, presence: true
	validates :fiscalCode, presence: true
	validates :hourTariff, presence: true



end
