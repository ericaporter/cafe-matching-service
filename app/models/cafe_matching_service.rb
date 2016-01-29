class CafeMatchingService
  #checking user's needs against what the cafe has to see if it is a match
  #User: :location, :acceptable_bitterness, :plugs_required, :needs_gluten_free_option, :requires_wifi
  #Cafe :location, :bitterness, :plugs_available, :has_gluten_free_option, :has_wifi
  def initialize(user, cafe)
    @user = user
    @cafe = cafe
    @cafe_matches_users_needs = nil 
    run
  end
  
  def run
    check_location
    check_bitterness
    check_enough_plugs
    check_gluten_free
    check_wifi
  end

  def is_a_match?
    @cafe_matches_users_needs
  end

  private

  def check_location
    @cafe_matches_users_needs = @user.location == @cafe.location
  end
  def check_bitterness
    @cafe_matches_users_needs = @user.acceptable_bitterness <= @cafe.bitterness
  end
  def check_enough_plugs
    @cafe_matches_users_needs = @user.plugs_required <= @cafe.plugs_available
  end
  def check_gluten_free
    # true == false #false
    # true == true #true
    # false == false #true
    # false == true #false •

    @cafe_matches_users_needs = @user.needs_gluten_free_option == @cafe.has_gluten_free_option
    if @user.needs_gluten_free_option == false && @cafe.has_gluten_free_option == true
      @cafe_matches_users_needs = true
    end  
  end

  def check_wifi
    # true == true #true
    # true == false #false
    # false == true #false •
    # false == false #true

    @cafe_matches_users_needs = @user.requires_wifi == @cafe.has_wifi
    if @user.requires_wifi == false && @cafe.has_wifi == true
      @cafe_matches_users_needs = true
    end  
  end


end

# c= CafeMatchingService.new(user, cafe)
# c.is_a_match?