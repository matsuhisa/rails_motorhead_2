require 'motorhead/engine'

module NewBooks
  class Engine < ::Rails::Engine
    include Motorhead::Engine

    active_if { raise Motorhead::ActiveIfNotConfigured, <<-MSG }
Please configure appropriate access control for NewBooks Engine.

e.g.
1) accessible for the admin users only:
    active_if { current_user.admin? }

2) always enabled for everyone:
    active_if { true }
MSG
  end
end
