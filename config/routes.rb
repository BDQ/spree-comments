
map.namespace :admin do |admin|
  admin.resources :comments
  admin.resources :comment_types

  admin.resources :orders, :member => {:comments => :get} do |order|
    order.resources :shipments, :member => {:comments => :get}
  end
end

