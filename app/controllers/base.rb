module Site
  module Routes
    # Base configuration all routes inherit
    class Base < Sinatra::Application
      configure do
        set :views, 'app/views'
        set :root, App.root
        set :session_secret, "12378123"
        set :protection, except: :session_hijacking
        enable :sessions
        disable :static

        set :haml, layout_options: { views: 'app/views/layouts' }
      end

      helpers Helpers
    end
  end
end
