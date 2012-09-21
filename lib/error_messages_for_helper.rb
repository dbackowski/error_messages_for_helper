module ErrorMessagesForHelper
  @@html_options = { :id => 'error_explanation' }

  def self.html_options(options)
    @@html_options = options
  end

  def error_messages_for(object_name)
    model = instance_variable_get("@#{object_name}")

    if model.present? && model.errors.present?
      errors_list = capture do
        content_tag :ul do
          model.errors.each do |attr, message|
            concat(content_tag :li, message)
          end
        end
      end

      result = content_tag :h2, t(:header_message, :scope => 'error_messages_for', :default => 'Unable to save data.').html_safe
      result << content_tag(:p, t(:error_list, :scope => 'error_messages_for', :default => 'Errors list:').html_safe)
      result << errors_list
      result = content_tag :div, result, @@html_options
    end
  end
end

ActionView::Base.send :include, ErrorMessagesForHelper
