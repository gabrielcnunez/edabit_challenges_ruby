require 'rspec'
require './lib/reverse_a_string'

RSpec.describe 'Reverse a String Without Using Reverse' do
  it 'takes a string, reverses it without using reverse built-in method' do
    expect(reverse("Think different.")).to eq(".tnereffid knihT")
    expect(reverse("It doesn't make sense to hire smart people and tell them what to do; we hire smart people so they can tell us what to do.")).to eq(".od ot tahw su llet nac yeht os elpoep trams erih ew ;od ot tahw meht llet dna elpoep trams erih ot esnes ekam t'nseod tI")
    expect(reverse("Innovation is the ability to see change as an opportunity - not a threat")).to eq("taerht a ton - ytinutroppo na sa egnahc ees ot ytiliba eht si noitavonnI")
    expect(reverse("Everything is based on a simple rule: Quality is the best business plan.")).to eq(".nalp ssenisub tseb eht si ytilauQ :elur elpmis a no desab si gnihtyrevE")
    expect(reverse("The people who are crazy enough to think they can change the world are the ones who do.")).to eq(".od ohw seno eht era dlrow eht egnahc nac yeht kniht ot hguone yzarc era ohw elpoep ehT")
    expect(reverse("Don't let the noise of others' opinions drown out your own inner voice.")).to eq(".eciov renni nwo ruoy tuo nword snoinipo 'srehto fo esion eht tel t'noD")
    expect(reverse("Learn continually; There's always one more thing to learn.")).to eq(".nrael ot gniht erom eno syawla s'erehT ;yllaunitnoc nraeL")
    expect(reverse("Quality is more important than quantity. One home run is much better than two doubles.")).to eq(".selbuod owt naht retteb hcum si nur emoh enO .ytitnauq naht tnatropmi erom si ytilauQ")
    expect(reverse("Your time is limited so don't waste it living someone else's life.")).to eq(".efil s'esle enoemos gnivil ti etsaw t'nod os detimil si emit ruoY")
    expect(reverse("The only way to be truly satisfied is to do what you believe is great work.")).to eq(".krow taerg si eveileb uoy tahw od ot si deifsitas ylurt eb ot yaw ylno ehT")
  end
end