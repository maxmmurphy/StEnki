# RailsAdmin config file. Generated on September 01, 2012 22:28
# See github.com/sferik/rails_admin for more informations

require Rails.root.join('lib', 'rails_admin_tree.rb')


RailsAdmin.config do |config|

  

  

  # If your default_local is different from :en, uncomment the following 2 lines and set your default locale here:
  # require 'i18n'
  # I18n.default_locale = :de

  config.authorize_with :cancan
  # config.current_user_method { current_user } # auto-generated

  
  config.authenticate_with {}
  config.current_user_method {current_user}

  # If you want to track changes on your models:
  # config.audit_with :history, User

  # Or with a PaperTrail: (you need to install it first)
  # config.audit_with :paper_trail, User

  # Set the admin name here (optional second array element will appear in a beautiful RailsAdmin red ©)
  config.main_app_name = ['StEnki', 'Admin']
  # or for a dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }


  #  ==> Global show view settings
  # Display empty fields in show views
  # config.compact_show_view = false

  #  ==> Global list view settings
  # Number of default rows per-page:
  # config.default_items_per_page = 20

  #  ==> Included models
  # Add all excluded models here:
  # config.excluded_models = [Comment, DeleteCommentUndo, DeletePageUndo, DeletePostUndo, Page, Post, Tag, Tagging, UndoItem]

  # Add models here if you want to go 'whitelist mode':
  # config.included_models = [Comment, DeleteCommentUndo, DeletePageUndo, DeletePostUndo, Page, Post, Tag, Tagging, UndoItem]

  # Application wide tried label methods for models' instances
  # config.label_methods << :description # Default is [:name, :title]

  #  ==> Global models configuration
  # config.models do
  #   # Configuration here will affect all included models in all scopes, handle with care!
  #
  #   list do
  #     # Configuration here will affect all included models in list sections (same for show, export, edit, update, create)
  #
  #     fields_of_type :date do
  #       # Configuration here will affect all date fields, in the list section, for all included models. See README for a comprehensive type list.
  #     end
  #   end
  # end
  #
  #  ==> Model specific configuration
  # Keep in mind that *all* configuration blocks are optional.
  # RailsAdmin will try his best to provide the best defaults for each section, for each field.
  # Try to override as few things as possible, in the most generic way. Try to avoid setting labels for models and attributes, use ActiveRecord I18n API instead.
  # Less code is better code!
  # config.model MyModel do
  #   # Cross-section field configuration
  #   object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #   label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #   label_plural 'My models'      # Same, plural
  #   weight -1                     # Navigation priority. Bigger is higher.
  #   parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #   navigation_label              # Sets dropdown entry's name in navigation. Only for parents!
  #   # Section specific configuration:
  #   list do
  #     filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #     items_per_page 100    # Override default_items_per_page
  #     sort_by :id           # Sort column (default is primary key)
  #     sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     # Here goes the fields configuration for the list view
  #   end
  # end

  # Your model's configuration, to help you get started:

  # All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible. (visible(true))

  # config.model Comment do
  #   # Found associations:
  #     configure :post, :belongs_to_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :post_id, :integer         # Hidden 
  #     configure :author, :string 
  #     configure :author_url, :string 
  #     configure :author_email, :string 
  #     configure :body, :text 
  #     configure :body_html, :text 
  #     configure :created_at, :timestamp 
  #     configure :updated_at, :timestamp   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model DeleteCommentUndo do
  #   # Found associations:
  #   # Found columns:
  #     configure :id, :integer 
  #     configure :type, :string 
  #     configure :created_at, :timestamp 
  #     configure :data, :text   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model DeletePageUndo do
  #   # Found associations:
  #   # Found columns:
  #     configure :id, :integer 
  #     configure :type, :string 
  #     configure :created_at, :timestamp 
  #     configure :data, :text   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model DeletePostUndo do
  #   # Found associations:
  #   # Found columns:
  #     configure :id, :integer 
  #     configure :type, :string 
  #     configure :created_at, :timestamp 
  #     configure :data, :text   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Page do
  #   # Found associations:
  #   # Found columns:
  #     configure :id, :integer 
  #     configure :title, :string 
  #     configure :slug, :string 
  #     configure :body, :text 
  #     configure :body_html, :text 
  #     configure :created_at, :timestamp 
  #     configure :updated_at, :timestamp   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Post do
  #   # Found associations:
  #     configure :user, :belongs_to_association         # Hidden 
  #     configure :taggings, :has_many_association 
  #     configure :tags, :has_many_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :text, :text 
  #     configure :cached_tag_list, :string 
  #     configure :user_id, :integer         # Hidden 
  #     configure :type, :string   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Tag do
  #   # Found associations:
  #     configure :taggings, :has_many_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :name, :string   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Tagging do
  #   # Found associations:
  #     configure :tag, :belongs_to_association 
  #     configure :taggable, :belongs_to_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :tag_id, :integer         # Hidden 
  #     configure :taggable_id, :integer         # Hidden 
  #     configure :taggable_type, :string 
  #     configure :created_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model UndoItem do
  #   # Found associations:
  #   # Found columns:
  #     configure :id, :integer 
  #     configure :type, :string 
  #     configure :created_at, :timestamp 
  #     configure :data, :text   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # Register the class in lib/rails_admin_publish.rb
# Register the class in lib/rails_admin_publish.rb
  module RailsAdmin
    module Config
      module Actions
        class Tree < RailsAdmin::Config::Actions::Base
          RailsAdmin::Config::Actions.register(self)

        end
      end
    end
  end
   


  config.actions do
    # root actions
    dashboard                     # mandatory
    # collection actions
    index                         # mandatory
    new
    export
    history_index
    bulk_delete
    # member actions
    show
    edit
    delete
    history_show
    show_in_app
  

    # Set the custom action here
    tree do
      # Make it visible only for article model. You can remove this if you don't need.
      visible do
        bindings[:abstract_model].model.to_s == "Comment"
      end
    end

    nestable do
      visible do
        [Comment].include? bindings[:abstract_model].model
        # bindings[:abstract_model].model.to_s == "Comment"
      end
    end

  end

  config.model Comment do
    nestable_tree({ preview_field: :author, position_field: :id, max_depth: 3 })
    # nestable_list position_field: :created_at
  end

end
