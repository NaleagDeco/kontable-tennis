module ApplicationHelper
  def link_to_with_current(name, url, opts={})
    if current_page? url
      if opts[:class].blank?
        opts[:class] = 'active'
      else
        opts[:class] += ' active'
      end
    end
    link_to name, url, opts
  end

  def format_game_scores(scores)
    spans = scores.map do |w, l, status|
      content_tag 'span', "#{w}-#{l}", class: status
    end.join

    raw(spans)
  end
end
