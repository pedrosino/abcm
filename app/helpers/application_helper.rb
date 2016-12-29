module ApplicationHelper
  def bootstrap_class_for(flash_type)
    {
      success: 'alert-success',
      danger: 'alert-danger',
      warning: 'alert-warning',
      info: 'alert-info',

      # For devise
      notice: 'alert-success',
      alert: 'alert-danger',

      recaptcha_error: 'alert-danger'
    }[flash_type.to_sym] || flash_type.to_s
  end
end
