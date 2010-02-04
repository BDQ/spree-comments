class CommentsHooks < Spree::ThemeSupport::HookListener
  insert_after :admin_order_tabs, :partial => "admin/orders/tab"

  insert_after :admin_shipment_edit_buttons, :partial => "admin/shipments/button"
end