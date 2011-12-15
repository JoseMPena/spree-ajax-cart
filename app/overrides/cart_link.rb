Deface::Override.new(:virtual_path => "spree/products/_cart_form",
                     :name =>         'add_to_cart_ajax',
                     :insert_before => 'code[erb-loud]:contains("add-to-cart-button")',
                     :text => '<%= link_to "/cart/add/#{@product.master.id}", :remote => true, :method => :put do %>
                                <%= image_tag("icons/add-to-cart.png") + t(:add_to_cart) %>
                              <% end %>')