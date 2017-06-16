# Plato::DigitalIO class

assert('DigitalIO', 'class') do
  assert_equal(Plato::DigitalIO.class, Class)
end

assert('DigitalIO', 'superclass') do
  assert_equal(Plato::DigitalIO.superclass, Plato::GPIO)
end

assert('DigitalIO', 'new') do
  d1 = Plato::DigitalIO.new(0, false, :low)
  d2 = Plato::DigitalIO.new(1, true, :high)
  d3 = Plato::DigitalIO.new(2, true)
  d4 = Plato::DigitalIO.new(3)
  assert_true(d1 && d2 && d3 && d4)
end

assert('DigitalIO', 'new - argument error') do
  assert_raise(ArgumentError) {Plato::DigitalIO.new}
  assert_raise(ArgumentError) {Plato::DigitalIO.new(0, 1, 2, 3)}
end
