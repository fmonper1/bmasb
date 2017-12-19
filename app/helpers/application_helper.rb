module ApplicationHelper

  def current_class?(var)
      if var == @activeLink
        return 'active'
      end
  end

end
