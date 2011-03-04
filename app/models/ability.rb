class Ability
  include CanCan::Ability

  def initialize(user)
    can :access, :rails_admin
    can :manage, Ticket, :user_id => user.id
    cannot :destroy, Ticket
    if user.admin?
       can :manage, :all
    end
  end
end
