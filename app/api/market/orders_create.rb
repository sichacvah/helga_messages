module Market
  class OrdersCreate < Grape::API
    rescue_from :all do |e|
      error!({
        error: "#{e.class} error",
        message: e.message
      }, 500)
    end

    helpers do
     def declared_params
       ActionController::Parameters.new(params).permit!
     end
    end

  
    resource :orders do
      desc 'Create order'
      params do
        requires :name, type: String
        requires :email, type: String
        requires :card_token, type: String
        requires :order_items_attributes, type: Array do
          requires :variant_id, type: Integer
          requires :count, type: Integer
        end
      end

      
      post 'create' do
        order = Order.new declared_params
        order.payment_proccess
        order.save!
        order.to_json
      end
    end
  end
end

