require "administrate/base_dashboard"

class RestaurantDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    owner: Field::BelongsTo.with_options(class_name: "User"),
    id: Field::Number,
    name: Field::String,
    address: Field::Text,
    description: Field::Text,
    phone: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    owner_id: Field::Number,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :address,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :address,
    :description,
    :phone,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :address,
    :description,
    :phone,
  ]

  # Overwrite this method to customize how restaurants are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(restaurant)
    restaurant.name
  end
end
