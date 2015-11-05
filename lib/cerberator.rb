require 'diplomat'
require 'erb'
require 'cerberator\templatecontext'

module Cerberator
    class Cerberator   
        def initialize(template, keys, output)
            @template = template
            @keys = keys
            @output = output || File.join(File.dirname(template), File.basename(template, ".*"))
        end
    
        def run()       
            ctx = Template::Context.new
            (@keys || [""]).each do |prefix|
                Diplomat::Kv.get(prefix, :keys => true, :separator => "/").each do |key|
                    if key[-1] != "/"
                        value = Diplomat::Kv.get(key)
                        ctx.set_var(key.split("/")[-1], value)
                    end
                end
            end
            
            File.open(@output, "w") do |f|
                template = File.open(@template).read
                f.write ERB.new(template).result(ctx.get_binding)
            end
        end
    end
end