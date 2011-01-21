require 'redmine'

require 'update-custom-fields-commit/hooks'

Redmine::Plugin.register :update_custom_fields_on_commit do
  name 'Update custom fields upon commit'
  author 'Jon McManus'
  url 'http://github.com/jmcb/update-custom-fields-commit'
  author_url 'http://githu.com/jmcb'
  description 'Update specific custom fields, dependent on tracker, when closing an issue via commit.'
  version '0.1'

  requires_redmine :version_or_higher => '0.8.0'
end
