module Market
  class ProductsData < Grape::API
    rescue_from ActiveRecord::RecordNotFound do |e|
      error!({
        error: "#{e.class} error",
        message: e.message
      }, 404)
    end

     
    resource :products do
      desc 'Get data about product'
      params do
        requires :id, type: Integer, desc: 'Product id'
      end

      get ':id' do
        product = Product.find(params[:id])

        present product, with: ::Representers::ProductRepresenter
      end

    end
  end
end


