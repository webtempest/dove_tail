include ActionView::Helpers::TextHelper

class String
  def html_safe!() self end
  def html_safe?() true end
  def safe_concat(value) value+self end
end