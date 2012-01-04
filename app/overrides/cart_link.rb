Deface::Override.new(:virtual_path => "spree/products/_cart_form",
                     :name =>         'add_to_cart_ajax',
                     :replace_contents => 'code[erb-loud]:contains("add-to-cart-button")',
                     :text => 'link_to "/cart/add/#{@product.master.id}", :remote => true, :method => :put, :id => "add-to-cart-ajax-link" do')