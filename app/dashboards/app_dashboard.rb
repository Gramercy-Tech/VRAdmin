require "administrate/base_dashboard"

class AppDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    owner: Field::BelongsTo.with_options(class_name: "User"),
    videos: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    icon: Field::String,
    header_image: Field::String,
    splash_image: Field::String,
    background_color: Field::String,
    font_color: Field::String,
    splash_color: Field::String,
    submitted: Field::Boolean,
    user_id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :owner,
    :videos,
    :name,
    :submitted,
    :created_at,
    # :updated_at
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :owner,
    # :videos,
    :id,
    :name,
    :icon,
    :header_image,
    :splash_image,
    :background_color,
    :font_color,
    :user_id,
    :created_at,
    :updated_at,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    # :owner,
    :videos,
    :name,
    :icon,
    :header_image,
    :splash_image,
    :background_color,
    :splash_color,
    :font_color,
    :user_id,
    :submitted
  ]

  # Overwrite this method to customize how apps are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(app)
  #   "App ##{app.id}"
  # end
end
