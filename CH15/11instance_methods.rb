String.methods.grep(/methods/).sort # => [:instance_methods, :methods, :private_instance_methods, :private_methods, :protected_instance_methods, :protected_methods, :public_instance_methods, :public_methods, :singleton_methods]

Range.instance_methods(false).sort # => [:%, :==, :===, :begin, :bsearch, :count, :cover?, :each, :end, :entries, :eql?, :exclude_end?, :first, :hash, :include?, :inspect, :last, :max, :member?, :min, :minmax, :size, :step, :to_a, :to_s]
Range.instance_methods(true).sort  # => [:!, :!=, :!~, :%, :<=>, :==, :===, :=~, :__id__, :__send__, :all?, :any?, :begin, :bsearch, :chain, :chunk, :chunk_while, :class, :clone, :collect, :collect_concat, :count, :cover?, :cycle, :define_singleton_method, :detect, :display, :drop, :drop_while, :dup, :each, :each_cons, :each_entry, :each_slice, :each_with_index, :each_with_object, :end, :entries, :enum_for, :eql?, :equal?, :exclude_end?, :extend, :filter, :filter_map, :find, :find_all, :find_index, :first, :flat_map, :freeze, :frozen?, :gem, :grep, :grep_v, :group_by, :hash, :include?, :inject, :inspect, :instance_eval, :instance_exec, :instance_of?, :instance_variable_defined?, :instance_variable_get, :instance_variable_set, :instance_variables, :is_a?, :itself, :kind_of?, :last, :lazy, :map, :max, :max_by, :member?, :method, :methods, :min, :min_by, :minmax, :minmax_by, :nil?, :none?, :object_id, :one?, :partition, :private_methods, :protected_methods, :public_method, :public_methods, :public_send, :reduce, :reject, :remove_instance_variable, :respond_to?, :reverse_each, :select, :send, :singleton_class, :singleton_method, :singleton_methods, :size, :slice_after, :slice_before, :slice_when, :sort, :sort_by, :step, :sum, :taint, :tainted?, :take, :take_while, :tally, :tap, :then, :to_a, :to_enum, :to_h, :to_s, :to_set, :trust, :uniq, :untaint, :untrust, :untrusted?, :yield_self, :zip]
