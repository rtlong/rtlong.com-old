module ApplicationHelper

  def vertically_center(&block)
    content_for(:content_div_class, 'vertical-center')

    content_tag(:div, class: 'vertical-center', &block)
  end

end
