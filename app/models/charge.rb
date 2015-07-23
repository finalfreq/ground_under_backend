class Charge < ActiveRecord::Base
  has_many :users,  :through => :libraries
  before_save :create_charge

  def create_charge
    Stripe.api_key = ENV['pk_test_OtGLDc4zCAdDcd7zlHpEE0xa']

    # Get the credit card details submitted by the form
    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        :amount => amount *= 100, # amount in cents, again
        :currency => "usd",
        :source => token,
        :description => "Example charge"
      )
    rescue Stripe::CardError => e
      # The card has been declined
    end

end
