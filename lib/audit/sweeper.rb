class Audit::Sweeper < ActionController::Caching::Sweeper
  # This sweeper is going to keep an eye on the Product model
  observe User

  # If our sweeper detects that a Product was created call this
  def after_create(user)
          expire_cache_for(user)
  end

  # If our sweeper detects that a Product was updated call this
  def after_update(user)
          expire_cache_for(user)
  end

  # If our sweeper detects that a Product was deleted call this
  def after_destroy(user)
          expire_cache_for(user)
  end

  private
  def expire_cache_for(user)
    # Expire the list page now that we added a new product
    #expire_page(:controller => '#{record}', :action => 'list')

    # Expire a fragment
    expire_fragment(:controller => '#{user}',
      :action => 'recent', :action_suffix => 'all_users')
  end
end