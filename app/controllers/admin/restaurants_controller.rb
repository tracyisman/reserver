module Admin
  class RestaurantsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    def index
      super
      @resources = current_user.restaurants
    end

    def resource_params
      super.merge(owner_id: current_user.id)
    end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
