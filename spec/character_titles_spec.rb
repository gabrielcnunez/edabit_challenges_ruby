require 'rspec'
require './lib/character_titles'

RSpec.describe 'Game of Thrones: Character Titles' do
  it 'takes string, returns string with correct case for character titles' do
    # expect(correct_title("lord eddard stark, hand of the king.")).to eq("Lord Eddard Stark, Hand of the King.")
    # expect(correct_title("jaime lannister, lord commander of the kingsguard.")).to eq("Jaime Lannister, Lord Commander of the Kingsguard.")
    # expect(correct_title("varys, master of whisperers.")).to eq("Varys, Master of Whisperers.")
    # expect(correct_title("doran martell, prince of dorne, lord of sunspear.")).to eq("Doran Martell, Prince of Dorne, Lord of Sunspear.")

    # expect(correct_title("TYRION LANNISTER, HAND OF THE QUEEN.")).to eq("Tyrion Lannister, Hand of the Queen.")
    # expect(correct_title("GRAND MAESTER PYCELLE.")).to eq("Grand Maester Pycelle.")
    # expect(correct_title("EURON GREYJOY, KING OF THE IRON ISLANDS, LORD REAPER OF PYKE.")).to eq("Euron Greyjoy, King of the Iron Islands, Lord Reaper of Pyke.")
    # expect(correct_title("PETYR BAELISH, LORD PROTECTOR OF THE VALE.")).to eq("Petyr Baelish, Lord Protector of the Vale.")
    expect(correct_title("MANCE RAYDER, KING-BEYOND-THE-WALL.")).to eq("Mance Rayder, King-Beyond-the-Wall.")

    expect(correct_title("jOn SnoW, kINg IN thE noRth.")).to eq("Jon Snow, King in the North.")
    expect(correct_title("Jeor MORMONT, Lord COMMANDER of the NIGHT'S WATCH.")).to eq("Jeor Mormont, Lord Commander of the Night's Watch.")
    expect(correct_title("cERSei LANnIStEr, QuEEn Of the aNdals and THE fIRSt men, PROtecTOR OF tHe SEVEN KInGdOmS.")).to eq("Cersei Lannister, Queen of the Andals and the First Men, Protector of the Seven Kingdoms.")
    expect(correct_title("DAeneRYS StOrmboRn oF hOuse TARGARYEn, ThE FirsT OF HER naMe, QUeEn OF The ANdAlS And THe FirsT mEN, PROtECtOr Of tHE SEven KinGDOmS, The MoTHeR of DrAGONS, thE KhALeEsi oF THE GReAt gRAss sEa, The UnburNT, The BReakEr of cHAInS.")).to eq("Daenerys Stormborn of House Targaryen, the First of Her Name, Queen of the Andals and the First Men, Protector of the Seven Kingdoms, the Mother of Dragons, the Khaleesi of the Great Grass Sea, the Unburnt, the Breaker of Chains.")
  end
end