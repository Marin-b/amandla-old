module LogoHelper
  def small_logo(options = {})
    cl_image_tag "amandla_logo_small", options
  end

  def logo(options = {})
    cl_image_tag "amandla_logo", options
  end
end
