module ApplicationHelper

  def title(page_title, options={}, &block)
    content_for(:title, page_title.to_s)
    content_tag(:div, 'data-role' => 'header', 'data-backbtn' => 'false') do
      if block_given?
        concat(capture(&block))
      else
        concat(content_tag(:h1, page_title, options))
      end
      concat(link_to("Home", root_path, :class => "ui-btn-right", "data-icon" => "home"))
    end
  end

  def content(&block)
    content_tag(:div, 'data-role' => 'content') do
      concat(render :partial => 'layouts/messages')
      concat(capture(&block))
    end
  end

  def footer(&block)
    content_tag(:div, 'data-role' => 'footer') do
      capture(&block)
    end
  end

  def button(content_for_button, link, options={})
    options.reverse_merge!({
      'data-role' => 'button'
    })

    link_to(content_for_button, link, options)
  end

  def qr_code_image_tag(url)
    image_tag "http://chart.apis.google.com/chart?chs=200x200&cht=qr&&chld=H&chl=#{url}"
  end
  
end
