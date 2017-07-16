require 'securerandom'

module RenderAsync
  module ViewHelper

    def render_async(path, html_options = {}, event_name:)
      container_name = "render_async_#{SecureRandom.hex(5)}#{Time.now.to_i}"
      render "render_async/render_async", container_name: container_name,
                                          path: path,
                                          event_name: event_name,
                                          html_options: html_options
    end
  end
end
