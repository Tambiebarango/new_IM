module ApplicationHelper
    def flash_class(level)
        case level
          when 'notice' then "ui info message"
          when 'success' then "ui positive message"
          when 'error' then "ui negative message"
        end
      end
end
