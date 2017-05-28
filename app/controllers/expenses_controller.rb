class ExpensesController < ApplicationController
  def index
     @expenses = Expense.where("concept like? AND category_id like?","%#{params[:concept]}%","%#{params[:category_id]}%")
  end
end
