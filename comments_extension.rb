class CommentsExtension < Spree::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/comments"

  # Please use order_comments/config/routes.rb instead for extension routes.

  def self.require_gems(config)
    config.gem "acts_as_commentable", :version => '2.0.2'
  end

  def activate
    Order.class_eval do
      acts_as_commentable
    end

    Shipment.class_eval do
      acts_as_commentable
    end

    Admin::OrdersController.class_eval do
      def comments
        load_object
        @comment_types = CommentType.find(:all, :conditions => {:applies_to => "Order"} )
      end
    end

    Admin::ShipmentsController.class_eval do
      def comments
        load_object
        @comment_types = CommentType.find(:all, :conditions => {:applies_to => "Shipment"} )
      end
    end

  end
end
