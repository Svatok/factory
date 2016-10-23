class Factory
  def self.new(*f_args, &block)

    Class.new do
      attr_accessor *f_args

      define_method :initialize do |*args|
        pairs = f_args.zip(args)
        pairs.each do |name, value|
          send("#{name}=", value)
        end

      end

      def [](arg)
        arg = (arg.is_a? Numeric) ? instance_variables[arg] : "@#{arg}"
        instance_variable_get(arg)
      end

      class_eval(&block) if block_given?

    end

  end
end
