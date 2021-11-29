=begin
=end

RSpec. describe "a random double" do
  it 'only allows defined methods to be invoked' do
    # stuntman = double('Mr. Danger', fall_of_ladder: 'Oops', light_on_fire: true)
    # expect(stuntman.fall_of_ladder).to eq('Oops')
    # expect(stuntman.light_on_fire).to eq(true)

    ## alternative syntax
    # stuntman = double('Mr. Danger')
    # allow(stuntman).to receive(:fall_of_ladder)
    # allow(stuntman).to receive(:light_on_fire).and_return(true)
    # expect(stuntman.fall_of_ladder).to be_nil # a function returns by_default a nil, if a return value in function is not-defined
    # expect(stuntman.light_on_fire).to eq(true)

    ## alternative syntax
    stuntman = double('Mr. Danger')
    # receive_messages enables to pass hash object in argument.
    allow(stuntman).to receive_messages(fall_of_ladder: 'Oops', light_on_fire: true)
    expect(stuntman.fall_of_ladder).to eq('Oops')
    expect(stuntman.light_on_fire).to eq(true)
  end
end
