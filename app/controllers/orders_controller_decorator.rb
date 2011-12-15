Spree::OrdersController.class_eval do
  
  include Spree::BaseHelper
  include ActionView::Helpers::NumberHelper
  
  def add
    @order = current_order(true)
    variant = Spree::Variant.find(params[:variant_id])

    @order.add_variant(variant, 1)
  end
  
  def update
    @order = current_order
    if @order.update_attributes(params[:order])
      @order.line_items = @order.line_items.select {|li| li.quantity > 0 }
      respond_to do |format|
        format.html { redirect_to cart_path }
        format.js   { render :action => 'edit' }  
      end
    else
      render :edit
    end
  end
end