require 'rspec'
require './lib/name_from_email_address'

RSpec.describe 'Retrieve Name from Email Address' do
  it 'takes email address, returns name from address' do
    expect(get_name("yourname@example.com")).to eq("yourname")
    expect(get_name("john64@gmail.com")).to eq("john")
    expect(get_name("pamela78_Cole@hotmail.com")).to eq("pamelaCole")
    expect(get_name("Chickenlololol29@yahoo.com")).to eq("Chickenlololol")
    expect(get_name("a872894972Bigbear@whateverdomain.xyz")).to eq("aBigbear")
    expect(get_name('python$#$"_guy@overtherainbow.net')).to eq("pythonguy")
    expect(get_name("Mr.President2050@USofA.gov")).to eq("MrPresident")
    expect(get_name("z50@python.com")).to eq("z")
    expect(get_name("student@exampleschooldistrict.net")).to eq("student")
    expect(get_name("sars-CoV-2@pandemic.org")).to eq("sarsCoV")
    expect(get_name("t1h2e3q4u5i6c7k8b9r0o1w2n3f4o5x6j7u8m9p0e123456789doverthelazydog@ro.bot")).to eq("thequickbrownfoxjumpedoverthelazydog")
    expect(get_name("][:;><?/(*^%$E@br.uh")).to eq("E")
    expect(get_name("uhOh-theThirteenthTest@unluc.ky")).to eq("uhOhtheThirteenthTest")
    expect(get_name("e@ifdirmvsidso.jeksdjjcoa")).to eq("e")
    expect(get_name("a@b.c")).to eq("a")
  end
end