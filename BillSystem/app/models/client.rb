class Client < ApplicationRecord

	has_many :bills, dependent: :destroy

	validates :name, presence: true
	validates :surname, presence: true
	validates :fiscalCode, presence: true
	validates :hourTariff, presence: true



end
