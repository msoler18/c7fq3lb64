class ExpensesController < ApplicationController
  before_action :authenticate_user!, only: [:index]	
  def index
     @expenses = current_user.expenses
     #@search = Expense.where("concept like? AND category_id like?","%#{params[:concept]}%","%#{params[:category_id]}%")
  end
end
