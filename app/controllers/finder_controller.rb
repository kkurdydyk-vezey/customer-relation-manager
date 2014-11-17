class FinderController < ApplicationController
  #finds all customers
  def index
    @customers = Customer.all
  end
  #sorts customers alphabetically
  def alphabetized
    @customers = Customer.order(:full_name)
  end
  # finds all customers with no email address
  # couldn't figure out why no customers were showing for this
  # should be showing 2 customers :(
  def missing_email
    @customers = Customer.where(:email_address => nil)
  end
end
