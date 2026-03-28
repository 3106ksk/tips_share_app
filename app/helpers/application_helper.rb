module ApplicationHelper
  def flash_background_color(type)
    case type.to_sym
    when :success then "bg-sky-50"
    when :alert  then "bg-red-50"
    else "bg-gray-500"
    end
  end
end

