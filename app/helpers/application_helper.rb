module ApplicationHelper

  def site_name
    'Sysco Sailing'
  end

  def full_site_name
    ' Small Yacht Sailing Club of Oregon.'
  end


  def site_url
    if Rails.env.production?
      'http://www.sysco.org'
    else
      'http://localhost:3000'
    end
  end

  def meta_author
    'Steven Nance <steven@devtrw.com'
  end

  def meta_description
    'Promoting active, safe, fun, and competitive boat racing'
  end

  def meta_keywords
    'sailing, sail, sailboat, Columbia River, sailboat racing'
  end

  # Returns the full title on a per-page basis.
  def full_title(page_title, with_sitename = true)
    if page_title.empty?
      site_name
    else
      with_sitename ? "#{page_title} | #{site_name}" : page_title
    end
  end
end
