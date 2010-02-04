map.resources :comments

map.namespace :admin do |admin|
   admin.resources :orders, :member => {:comments => :get} do |order|
     order.resources :shipments, :member => {:comments => :get}
   end
end

