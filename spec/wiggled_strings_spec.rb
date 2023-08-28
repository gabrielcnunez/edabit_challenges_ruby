require 'rspec'
require './lib/wiggled_strings'

RSpec.describe 'Wiggled Strings' do
  it 'returns array of given strings offset by spaces corresponding to length of string' do
    expect(wiggle_string("hello")).to eq([
      "hello",
      " hello",
      "  hello",
      "   hello",
      "    hello",
      "     hello",
      "    hello",
      "   hello",
      "  hello",
      " hello",
      "hello"
    ])

    expect(wiggle_string("EDABIT")).to eq([
      "EDABIT",
      " EDABIT",
      "  EDABIT",
      "   EDABIT",
      "    EDABIT",
      "     EDABIT",
      "      EDABIT",
      "     EDABIT",
      "    EDABIT",
      "   EDABIT",
      "  EDABIT",
      " EDABIT",
      "EDABIT"
    ])

    expect(wiggle_string("Wiggle Time")).to eq([
      "Wiggle Time",
      " Wiggle Time",
      "  Wiggle Time",
      "   Wiggle Time",
      "    Wiggle Time",
      "     Wiggle Time",
      "      Wiggle Time",
      "       Wiggle Time",
      "        Wiggle Time",
      "         Wiggle Time",
      "          Wiggle Time",
      "           Wiggle Time",
      "          Wiggle Time",
      "         Wiggle Time",
      "        Wiggle Time",
      "       Wiggle Time",
      "      Wiggle Time",
      "     Wiggle Time",
      "    Wiggle Time",
      "   Wiggle Time",
      "  Wiggle Time",
      " Wiggle Time",
      "Wiggle Time"
    ])

    expect(wiggle_string("the dog")).to eq(["the dog", " the dog", "  the dog", "   the dog", "    the dog", "     the dog", "      the dog", "       the dog", "      the dog", "     the dog", "    the dog", "   the dog", "  the dog", " the dog", "the dog"])
    expect(wiggle_string("wiggle wiggle wiggle")).to eq(["wiggle wiggle wiggle", " wiggle wiggle wiggle", "  wiggle wiggle wiggle", "   wiggle wiggle wiggle", "    wiggle wiggle wiggle", "     wiggle wiggle wiggle", "      wiggle wiggle wiggle", "       wiggle wiggle wiggle", "        wiggle wiggle wiggle", "         wiggle wiggle wiggle", "          wiggle wiggle wiggle", "           wiggle wiggle wiggle", "            wiggle wiggle wiggle", "             wiggle wiggle wiggle", "              wiggle wiggle wiggle", "               wiggle wiggle wiggle", "                wiggle wiggle wiggle", "                 wiggle wiggle wiggle", "                  wiggle wiggle wiggle", "                   wiggle wiggle wiggle", "                    wiggle wiggle wiggle", "                   wiggle wiggle wiggle", "                  wiggle wiggle wiggle", "                 wiggle wiggle wiggle", "                wiggle wiggle wiggle", "               wiggle wiggle wiggle", "              wiggle wiggle wiggle", "             wiggle wiggle wiggle", "            wiggle wiggle wiggle", "           wiggle wiggle wiggle", "          wiggle wiggle wiggle", "         wiggle wiggle wiggle", "        wiggle wiggle wiggle", "       wiggle wiggle wiggle", "      wiggle wiggle wiggle", "     wiggle wiggle wiggle", "    wiggle wiggle wiggle", "   wiggle wiggle wiggle", "  wiggle wiggle wiggle", " wiggle wiggle wiggle", "wiggle wiggle wiggle"])
    expect(wiggle_string("Hello World!")).to eq(["Hello World!", " Hello World!", "  Hello World!", "   Hello World!", "    Hello World!", "     Hello World!", "      Hello World!", "       Hello World!", "        Hello World!", "         Hello World!", "          Hello World!", "           Hello World!", "            Hello World!", "           Hello World!", "          Hello World!", "         Hello World!", "        Hello World!", "       Hello World!", "      Hello World!", "     Hello World!", "    Hello World!", "   Hello World!", "  Hello World!", " Hello World!", "Hello World!"])
    expect(wiggle_string("Edabit is fun!")).to eq(["Edabit is fun!", " Edabit is fun!", "  Edabit is fun!", "   Edabit is fun!", "    Edabit is fun!", "     Edabit is fun!", "      Edabit is fun!", "       Edabit is fun!", "        Edabit is fun!", "         Edabit is fun!", "          Edabit is fun!", "           Edabit is fun!", "            Edabit is fun!", "             Edabit is fun!", "              Edabit is fun!", "             Edabit is fun!", "            Edabit is fun!", "           Edabit is fun!", "          Edabit is fun!", "         Edabit is fun!", "        Edabit is fun!", "       Edabit is fun!", "      Edabit is fun!", "     Edabit is fun!", "    Edabit is fun!", "   Edabit is fun!", "  Edabit is fun!", " Edabit is fun!", "Edabit is fun!"])
    expect(wiggle_string("123456789")).to eq(["123456789", " 123456789", "  123456789", "   123456789", "    123456789", "     123456789", "      123456789", "       123456789", "        123456789", "         123456789", "        123456789", "       123456789", "      123456789", "     123456789", "    123456789", "   123456789", "  123456789", " 123456789", "123456789"])
    expect(wiggle_string("qwertyuiop")).to eq(["qwertyuiop", " qwertyuiop", "  qwertyuiop", "   qwertyuiop", "    qwertyuiop", "     qwertyuiop", "      qwertyuiop", "       qwertyuiop", "        qwertyuiop", "         qwertyuiop", "          qwertyuiop", "         qwertyuiop", "        qwertyuiop", "       qwertyuiop", "      qwertyuiop", "     qwertyuiop", "    qwertyuiop", "   qwertyuiop", "  qwertyuiop", " qwertyuiop", "qwertyuiop"])
    expect(wiggle_string("python javascript")).to eq(["python javascript", " python javascript", "  python javascript", "   python javascript", "    python javascript", "     python javascript", "      python javascript", "       python javascript", "        python javascript", "         python javascript", "          python javascript", "           python javascript", "            python javascript", "             python javascript", "              python javascript", "               python javascript", "                python javascript", "                 python javascript", "                python javascript", "               python javascript", "              python javascript", "             python javascript", "            python javascript", "           python javascript", "          python javascript", "         python javascript", "        python javascript", "       python javascript", "      python javascript", "     python javascript", "    python javascript", "   python javascript", "  python javascript", " python javascript", "python javascript"])
  end
end