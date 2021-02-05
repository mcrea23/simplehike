module ApplicationHelper
  def render_nav_links
    content_tag("ul", class: "right") do 
      if user_signed_in?
        content_tag("li") do 
          link_to("Parks", parks_path)
        end +
        content_tag("li") do
          link_to("Logout", destroy_user_session_path, method: "DELETE")
        end
      else
        content_tag("li") do
          link_to("Login", new_user_session_path)
        end +
        content_tag("li") do
          link_to("Signup", new_user_registration_path)
        end +
        content_tag("li") do
          link_to("Sign in with Facebook", user_facebook_omniauth_authorize_path, method: :post)
        end
      end
    end
  end
end
