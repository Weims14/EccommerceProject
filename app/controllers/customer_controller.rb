class CustomerController < ApplicationController

  def view_customer
    @customers = Customer.all
    @provinces = Province.all
  end
end
