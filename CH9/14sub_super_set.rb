require 'set'

small_states = Set.new(["Connecticut", "Delaware", "Rhode Island"])
tiny_states = Set.new(["Delaware", "Rhode Island"])
p tiny_states.subset?(small_states)
p small_states.superset?(tiny_states)
