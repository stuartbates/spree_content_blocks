module SpreeContentBlocks
  module ApplicationHelper

    def spree_content_block(token)
      render 'spree/content_blocks/content_block', :token => token
    end

    def edit_content_block_link(block)
      link_to 'Edit', edit_admin_content_block_path(block), :class => 'admin_edit', :target => :blank if spree_current_user && spree_current_user.admin?
    end

  end
end