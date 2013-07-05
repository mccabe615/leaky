require 'spec_helper'

describe Foo do
  it "should not leak" do
    total = 1000

    # GC.disable

    total.times do |i|
      Foo.create!(name: i)
    end

    # GC.enable

    # GC.start

    count = ObjectSpace.each_object(Foo){|i|}
    puts "Checking #{Foo} which is at #{count}"
    count.should < (total * 0.9).to_i#, ("Missed the count for #{c} - came up with #{count}"
  end
end
