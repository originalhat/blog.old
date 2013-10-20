module PostsHelper
  def clean_date datetime
    # FIXME: why isn't 'posted' / 'datetime' getting set in tests?
    datetime.strftime('%B %d %Y') if datetime
  end

  def clean_author
    if current_admin
      fname = current_admin.first_name
      lname = current_admin.last_name
      "#{fname} #{lname}"
    else
      "Mr. Grndz"
    end
  end
end
