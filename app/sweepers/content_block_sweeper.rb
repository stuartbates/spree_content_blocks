class ContentBlockSweeper < ActionController::Caching::Sweeper

  observe Spree::ContentBlock

  def sweep(content_block)
    p "Clearing cache for content_block_#{content_block.token}"
    expire_fragment("content_block_#{content_block.token}")
  end
  alias_method :after_create, :sweep
  alias_method :after_update, :sweep
  alias_method :after_destroy, :sweep

end