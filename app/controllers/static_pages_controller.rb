class StaticPagesController < ApplicationController
  def index
    @employees = Employee.all
    @balance = BankAccount.first.balance

    render :index
  end
end
