class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in (current) user. For example:
    #
    #   if user
    #     can :access, :all
    #   else
    #     can :access, :home
    #     can :create, [:users, :sessions]
    #   end
    #
    # Here if there is a user he will be able to perform any action on any controller.
    # If someone is not logged in he can only access the home, users, and sessions controllers.
    #
    # The first argument to `can` is the action the user can perform. The second argument
    # is the controller name they can perform that action on. You can pass :access and :all
    # to represent any action and controller respectively. Passing an array to either of
    # these will grant permission on each item in the array.
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities


    can :access, :rails_admin   # grant access to rails_admin
    can :dashboard, :all          # grant access to the dashboard
    can :show_in_app, :all
    can :tree, :all
    can :nestable, :all

    can :read, :all
    can :index, :all
    
    if !user.nil? && user.admin?
        can :manage, :all
    end


    #can :read, :all                   # allow everyone to read everything
    # can :access, :rails_admin       # only allow admin users to access Rails Admin
    # can :dashboard, :all

    # if user 
    #   can :access, :rails_admin       # only allow admin users to access Rails Admin
    #   can :dashboard, :all            # allow access to dashboard
    #   if user.admin?
    #     can :manage, :all             # allow superadmins to do anything
    #     can :access, :all
    #   elsif user.guest?
    #     can :manage, :all  # allow managers to do anything to products and users
    #   end
    # end

  end
end
