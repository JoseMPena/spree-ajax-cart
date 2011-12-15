Rails.application.routes.draw do
  scope :module => "spree" do
    put '/cart/add/(:variant_id)',  :to => 'orders#add',        :as => :add_to_cart
    get '/ajax_cart',               :to => 'orders#ajax_cart',  :as => :ajax_cart
  end
end
