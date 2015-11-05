module Cerberator
    module Template
        class Context
            def set_var(key, value)
                instance_variable_set("@#{key}", value)
            end
            
            def get_binding
                binding
            end
        end
    end
end