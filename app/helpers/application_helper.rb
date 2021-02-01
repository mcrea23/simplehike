module ApplicationHelper
  def render_nav_links(signed_in)
    content_tag("ul", class: "right") do 
      if signed_in 
        content_tag("li") do 
          link_to("Parks", parks_path)
        end +
        content_tag("li") do
          link_to("Logout", destroy_sessions_path, method: "DELETE")
        end
      else
        content_tag("li") do
          link_to("Login", "#")
        end +
        content_tag("li") do
          link_to("Signup", "#")
        end
      end
    end
  end
end
