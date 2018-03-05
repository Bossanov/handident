class OrdersController < ApplicationController
def create
  donation = Donation.find(params[:donation_id])
  order  = Order.create!(amount: donation.price, state: 'pending')
  redirect_to new_order_payment_path(order)
end
end
