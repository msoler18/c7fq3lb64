class Category < ActiveRecord::Base
  has_many :expenses
  Expense.limit(2)
end
