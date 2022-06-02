module OpinionsHelper

  def render_category_trigger
    content_tag(:div, "Categories", class: "category-trigger", :onclick => "document.querySelector('.category-list').classList.toggle('show')")
  end

end
