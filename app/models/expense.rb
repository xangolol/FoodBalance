class Expense < ActiveRecord::Base
	#This is an abstract class and should not be instantiated
	#associations
	belongs_to :user

	monetize :amount_cents

	#validations
	validates :amount, presence: true
	validates :date, presence: true
end
