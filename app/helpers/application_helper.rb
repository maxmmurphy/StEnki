module ApplicationHelper
  def author
    Struct.new(:name, :email).new(enki_config[:author][:name], enki_config[:author][:email])
  end

  def open_id_delegation_link_tags(server, delegate)
    raw links = <<-EOS
      <link rel="openid.server" href="#{server}">
      <link rel="openid.delegate" href="#{delegate}">
    EOS
  end

  def format_comment_error(error)
    {
      'body'   => 'Please comment',
      'author' => 'Please provide your name or OpenID identity URL',
      'base'   => error.last
    }[error.first.to_s]
  end

  def get_all_themes
    Enki::Application::ALL_THEMES
  end

  def get_theme_stylesheet_link
    if current_user.bootswatch_theme
      begin
        stylesheet_link_tag current_user.bootswatch_theme, :media => "all"
      rescue
        stylesheet_link_tag "application_bootstrap_cyborg.css", :media => "all"
      end

    else
      stylesheet_link_tag "application_bootstrap_cyborg.css", :media => "all"
    end

  end

  

end
