class PagesController < HighVoltage::PagesController
  # authorize_resource
  skip_authorization_check
  skip_load_and_authorize_resource

  # before_filter :authenticate
  # layout :layout_for_page

  def index
    # render :text => "index contr"
    # files = Array.new
    @all_files = Rails.root.join('app', 'views', 'pages').children.select { |n| 
      File.file?(n) && n.basename.to_s[0] != '_'
    }
    puts "path: " + File.basename(Dir.getwd)
  end

  # protected
  #   def layout_for_page
  #     case params[:id]
  #     when 'home'
  #       'home'
  #     else
  #       'application'
  #     end
  #   end
end