#
class orchestrator::my_cnf inherits orchestrator {
  $cnf_erb = 'orchestrator/orchestrator.cnf.erb'

  file { $orchestrator::topology_cnf:
    content => template($cnf_erb),
    mode    => '0660',
    owner   => $orchestrator::user,
    group   => $orchestrator::group,
  }
  file { $orchestrator::srv_cnf:
    content => template($cnf_erb),
    mode    => '0660',
    owner   => $orchestrator::user,
    group   => $orchestrator::group,
  }
}
