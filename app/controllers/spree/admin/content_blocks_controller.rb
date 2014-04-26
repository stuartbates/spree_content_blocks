module Spree
  module Admin
    class ContentBlocksController < ResourceController

      before_filter :find_block, :only => [:show]
      before_filter :find_blocks, :only => [:edit, :update]

      cache_sweeper :content_block_sweeper, :only => [:update]

      def index

      end

      def edit

      end

      def update
        if @content_block.update_attributes(params[:content_block])
          redirect_to spree.admin_content_blocks_path
        end
      end

    protected

      def find_block
        @content_block = ContentBlock.find(params[:id])
      end

      def find_blocks
        @content_blocks = ContentBlock.order(:title).page(params[:page])
      end

    end
  end
end