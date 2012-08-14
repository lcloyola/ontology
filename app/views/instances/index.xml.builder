x = xml
x.instruct!
x.person do
  @instances.each do |instance|
    x.instance do
      x.name instance.name
      x.characteristics do
        instance.characteristics.each do |c|
            x.descriptor c.descriptor.name
            x.characteristic c.value
        end
      end
    end
  end
end

