class neo::environment {

  # dependencies
  include sysctl
  #include boxen

  # system customizations
  include zsh

  # apps
  include alfred
  include chrome
  include firefox::release
  include heroku
  include iterm2::stable
  include macvim
  include onepassword

  # os customizations
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::dock::2d
  include osx::dock::hide_indicator_lights
  include osx::finder::show_all_on_desktop
  include osx::universal_access::ctrl_mod_zoom
  include osx::universal_access::enable_scrollwheel_zoom
  include osx::disable_app_quarantine
  include osx::no_network_dsstores

  # repos
  repository {
    'vim config':
      source => 'git://github.com/neo/vim-config.git',
      path   => '/projects/vim-config',
      provider => 'git';

    'pairing config':
      source => 'git://github.com/edgecase/pairing-config.git',
      path  => '/projects/pairing-config',
      provider => 'git'

   }
}
