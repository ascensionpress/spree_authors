Deface::Override.new(:virtual_path => "spree/admin/shared/_configuration_menu",
                     :name => "add_author_admin_link",
                     :insert_bottom => "[data-hook='admin_configurations_sidebar_menu'], #admin_configurations_sidebar_menu[data-hook]",
                     :text => "<li<%== ' class=\"active\"' if controller.controller_name == 'theme_settings' %>><%= link_to \"Authors\", admin_authors_path %></li>")