class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |name|
      define_method(name) do
        name.instance_variable_get(name)
      end
      define_method(name) do |str|
        name.instance_variable_set(name, str)
      end
    end
  end
end
