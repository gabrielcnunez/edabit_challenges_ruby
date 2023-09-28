require 'rspec'
require './lib/password_validation'

RSpec.describe 'Password Validation' do
  it 'validates a password based on several rules' do
    # INVALID PASSWORDS
    expect(validate_password("P1zz@")).to eq(false)
    expect(validate_password("P1zz@P1zz@P1zz@P1zz@P1zz@")).to eq(false)
    expect(validate_password("mypassword11")).to eq(false)
    expect(validate_password("MYPASSWORD11")).to eq(false)
    expect(validate_password("iLoveYou")).to eq(false)
    expect(validate_password("Repeeea7!")).to eq(false)
    # VALID PASSWORDS
    expect(validate_password("H4(k+x0")).to eq(true)
    expect(validate_password("Fhg93@")).to eq(true)
    expect(validate_password("aA0!@#$%^&*()+=_-{}[]:;\"")).to eq(true)
    expect(validate_password("zZ9'?<>,.")).to eq(true)
  end
end