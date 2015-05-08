require 'rails_helper'

describe Expense do
	let(:expense) {FactoryGirl.build(:expense)}

	subject(expense)

	it {should respond_to(:date)}
end
