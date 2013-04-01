module ApplicationHelper

  def vertically_center(&block)
    content_for(:content_div_class, 'vertical-center')

    content_tag(:div, class: 'vertical-center', &block)
  end

  def google_analytics
    id = Rails.application.config.google_analytics_id or return
    render 'layouts/google_analytics', id: id
  end

  def title(title = nil)
    if title
      content_for :title, title
    else
      ['RTLong', content_for(:title).presence].compact.join(': ')
    end
  end

  def meta_tags
    @meta ||= {}

    # Set the viewport width to device width for mobile
    @meta['viewport'] ||= 'width=device-width, initial-scale=1.0'
    @meta['format-detection'] ||= 'telephone=no'
    @meta['author'] ||= 'Ryan Taylor Long'
    @meta['copyright'] ||= '&copy; %i Ryan Taylor Long' % [Date.today.year]
    @meta['description'] ||= 'Personal site of Ryan Taylor Long: Ruby developer in San Francisco'
    unless Rails.env.production?
      @meta['robots'] ||= 'noindex, nofollow'
    end

    ActiveSupport::SafeBuffer.new.tap do |output|
      @meta.each do |name, content|
        output << tag(:meta, name: name, content: content)
      end
    end
  end

  def add_meta(name, content)
    @meta ||= {}
    @meta[name.to_s] = content.presence
  end

  def icon(name)
    content_tag(:span, '', class: [name, :icon])
  end
end
