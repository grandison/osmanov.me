class CommentSweeper < ActionController::Caching::Sweeper
  observe Comment
  def after_create(comment)
    expire_cache_for(comment)
  end
  def after_update(comment)
    expire_cache_for(comment)
  end
  def after_destroy(comment)
    expire_cache_for(comment)
  end
  private
  def expire_cache_for(comment)
    expire_page(:controller => 'comments', :action => 'index')
    expire_fragment('all_available_comments')
  end
end
