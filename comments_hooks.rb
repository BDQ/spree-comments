class CommentsHooks < Spree::ThemeSupport::HookListener
  insert_after :admin_order_tabs, :partial => "admin/orders/tab"

  insert_after :admin_shipment_edit_buttons, :partial => "admin/shipments/button"

  insert_after :admin_configurations_menu do
    "<%= configurations_menu_item(I18n.t('comment_types'), admin_comment_types_url, I18n.t('manage_comment_types')) %>"
  end

end