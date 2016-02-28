class Order < ActiveRecord::Base
  has_many :order_items, dependent: :destroy
  has_many :variants, through: :order_items

  accepts_nested_attributes_for :order_items

  validates :email, :name, :card_token, presence: true
  


  def amount
    order_items.inject(0) { |sum, item| sum + item.count * item.variant.price }
  end


  def payment_proccess
    customer = Stripe::Customer.create email: email, 
                                       card: card_token

    Stripe::Charge.create customer: customer.id,
                          amount: amount.to_i * 100,
                          description: name,
                          currency: 'rub'
  end
end
