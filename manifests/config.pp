#

class orchestrator::config inherits orchestrator {

  # Create a merged together set of options.  Rightmost hashes win over left. Requires stdlib
  $options = merge($orchestrator::config_defaults, $orchestrator::config_override)

  file { $orchestrator::config:
    ensure  => file,
    owner   => $orchestrator::user,
    group   => $orchestrator::group,
    mode    => '0660',
    content => template($orchestrator::config_template),
  }

}
