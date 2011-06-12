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
      capture(&block)
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
  
end
