module ApplicationHelper

  def inline_error_for(field, form_obj)
    html = []

    if form_obj.errors[field].any?
      first = form_obj.errors[field].first
      html << tag.div(first, class: 'text-red-400 text-xs m-0 p-0 text-right mb-2')
    end

    html.join.html_safe
  end

end
