class CustomerController < ApplicationController

  def view_customer
    @customers = Customer.all
  end
end
