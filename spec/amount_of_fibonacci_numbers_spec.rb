require 'rspec'
require './lib/amount_of_fibonacci_numbers'

RSpec.describe 'Amount of Fibonacci Numbers' do
  it 'returns the amount of fibonacci numbers smaller than a given integer' do
    expect(amount_fib(0)).to eq(0)
    expect(amount_fib(1)).to eq(1)
    expect(amount_fib(2)).to eq(3)
    expect(amount_fib(3)).to eq(4)
    expect(amount_fib(4)).to eq(5)
    expect(amount_fib(5)).to eq(5)
    expect(amount_fib(6)).to eq(6)
    expect(amount_fib(7)).to eq(6)
    expect(amount_fib(8)).to eq(6)
    expect(amount_fib(9)).to eq(7)
    expect(amount_fib(7)).to eq(6)
    expect(amount_fib(8)).to eq(6)
    expect(amount_fib(9)).to eq(7)
    expect(amount_fib(12)).to eq(7)
    expect(amount_fib(13)).to eq(7)
    expect(amount_fib(14)).to eq(8)
    expect(amount_fib(20)).to eq(8)
    expect(amount_fib(21)).to eq(8)
    expect(amount_fib(22)).to eq(9)
    expect(amount_fib(33)).to eq(9)
    expect(amount_fib(34)).to eq(9)
    expect(amount_fib(35)).to eq(10)
    expect(amount_fib(54)).to eq(10)
    expect(amount_fib(55)).to eq(10)
    expect(amount_fib(56)).to eq(11)
    expect(amount_fib(88)).to eq(11)
    expect(amount_fib(89)).to eq(11)
    expect(amount_fib(90)).to eq(12)
    expect(amount_fib(143)).to eq(12)
    expect(amount_fib(144)).to eq(12)
    expect(amount_fib(145)).to eq(13)
    expect(amount_fib(232)).to eq(13)
    expect(amount_fib(233)).to eq(13)
    expect(amount_fib(234)).to eq(14)
    expect(amount_fib(376)).to eq(14)
    expect(amount_fib(377)).to eq(14)
    expect(amount_fib(378)).to eq(15)
    expect(amount_fib(609)).to eq(15)
    expect(amount_fib(610)).to eq(15)
    expect(amount_fib(611)).to eq(16)
    expect(amount_fib(986)).to eq(16)
    expect(amount_fib(987)).to eq(16)
    expect(amount_fib(988)).to eq(17)
    expect(amount_fib(1596)).to eq(17)
    expect(amount_fib(1597)).to eq(17)
    expect(amount_fib(1598)).to eq(18)
    expect(amount_fib(2583)).to eq(18)
    expect(amount_fib(2584)).to eq(18)
    expect(amount_fib(2585)).to eq(19)
    expect(amount_fib(4180)).to eq(19)
    expect(amount_fib(4181)).to eq(19)
    expect(amount_fib(4182)).to eq(20)
    expect(amount_fib(6764)).to eq(20)
    expect(amount_fib(6765)).to eq(20)
    expect(amount_fib(6766)).to eq(21)
    expect(amount_fib(10945)).to eq(21)
    expect(amount_fib(10946)).to eq(21)
    expect(amount_fib(10947)).to eq(22)
    expect(amount_fib(17710)).to eq(22)
    expect(amount_fib(17711)).to eq(22)
    expect(amount_fib(17712)).to eq(23)
    expect(amount_fib(28656)).to eq(23)
    expect(amount_fib(28657)).to eq(23)
    expect(amount_fib(28658)).to eq(24)
    expect(amount_fib(46367)).to eq(24)
    expect(amount_fib(46368)).to eq(24)
    expect(amount_fib(46369)).to eq(25)
    expect(amount_fib(75024)).to eq(25)
    expect(amount_fib(75025)).to eq(25)
    expect(amount_fib(75026)).to eq(26)
    expect(amount_fib(121392)).to eq(26)
    expect(amount_fib(121393)).to eq(26)
    expect(amount_fib(121394)).to eq(27)
    expect(amount_fib(196417)).to eq(27)
    expect(amount_fib(196418)).to eq(27)
    expect(amount_fib(196419)).to eq(28)
    expect(amount_fib(317810)).to eq(28)
    expect(amount_fib(317811)).to eq(28)
    expect(amount_fib(317812)).to eq(29)
    expect(amount_fib(514228)).to eq(29)
    expect(amount_fib(514229)).to eq(29)
    expect(amount_fib(514230)).to eq(30)
    expect(amount_fib(832039)).to eq(30)
    expect(amount_fib(832040)).to eq(30)
    expect(amount_fib(832041)).to eq(31)
    expect(amount_fib(1346268)).to eq(31)
    expect(amount_fib(1346269)).to eq(31)
    expect(amount_fib(1346270)).to eq(32)
    expect(amount_fib(2178308)).to eq(32)
    expect(amount_fib(2178309)).to eq(32)
    expect(amount_fib(2178310)).to eq(33)
    expect(amount_fib(3524577)).to eq(33)
    expect(amount_fib(3524578)).to eq(33)
    expect(amount_fib(3524579)).to eq(34)
    expect(amount_fib(5702886)).to eq(34)
    expect(amount_fib(5702887)).to eq(34)
    expect(amount_fib(5702888)).to eq(35)
    expect(amount_fib(9227464)).to eq(35)
    expect(amount_fib(9227465)).to eq(35)
    expect(amount_fib(9227466)).to eq(36)
    expect(amount_fib(14930351)).to eq(36)
    expect(amount_fib(14930352)).to eq(36)
    expect(amount_fib(14930353)).to eq(37)
    expect(amount_fib(24157816)).to eq(37)
    expect(amount_fib(24157817)).to eq(37)
    expect(amount_fib(24157818)).to eq(38)
    expect(amount_fib(39088168)).to eq(38)
    expect(amount_fib(39088169)).to eq(38)
    expect(amount_fib(39088170)).to eq(39)
    expect(amount_fib(63245985)).to eq(39)
    expect(amount_fib(63245986)).to eq(39)
    expect(amount_fib(63245987)).to eq(40)
    expect(amount_fib(102334154)).to eq(40)
    expect(amount_fib(102334155)).to eq(40)
    expect(amount_fib(102334156)).to eq(41)
    expect(amount_fib(165580140)).to eq(41)
    expect(amount_fib(165580141)).to eq(41)
    expect(amount_fib(165580142)).to eq(42)
    expect(amount_fib(267914295)).to eq(42)
    expect(amount_fib(267914296)).to eq(42)
    expect(amount_fib(267914297)).to eq(43)
    expect(amount_fib(433494436)).to eq(43)
    expect(amount_fib(433494437)).to eq(43)
    expect(amount_fib(433494438)).to eq(44)
    expect(amount_fib(701408732)).to eq(44)
    expect(amount_fib(701408733)).to eq(44)
    expect(amount_fib(701408734)).to eq(45)
    expect(amount_fib(1134903169)).to eq(45)
    expect(amount_fib(1134903170)).to eq(45)
    expect(amount_fib(1134903171)).to eq(46)
    expect(amount_fib(1836311902)).to eq(46)
    expect(amount_fib(1836311903)).to eq(46)
    expect(amount_fib(1836311904)).to eq(47)
    expect(amount_fib(2971215072)).to eq(47)
    expect(amount_fib(2971215073)).to eq(47)
    expect(amount_fib(2971215074)).to eq(48)
    expect(amount_fib(4807526975)).to eq(48)
    expect(amount_fib(4807526976)).to eq(48)
    expect(amount_fib(4807526977)).to eq(49)
    expect(amount_fib(7778742048)).to eq(49)
    expect(amount_fib(7778742049)).to eq(49)
    expect(amount_fib(7778742050)).to eq(50)
    expect(amount_fib(12586269024)).to eq(50)
    expect(amount_fib(12586269025)).to eq(50)
    expect(amount_fib(12586269026)).to eq(51)
    expect(amount_fib(20365011073)).to eq(51)
    expect(amount_fib(20365011074)).to eq(51)
    expect(amount_fib(20365011075)).to eq(52)
    expect(amount_fib(32951280098)).to eq(52)
    expect(amount_fib(32951280099)).to eq(52)
    expect(amount_fib(32951280100)).to eq(53)
    expect(amount_fib(53316291172)).to eq(53)
    expect(amount_fib(53316291173)).to eq(53)
    expect(amount_fib(53316291174)).to eq(54)
    expect(amount_fib(86267571271)).to eq(54)
    expect(amount_fib(86267571272)).to eq(54)
    expect(amount_fib(86267571273)).to eq(55)
    expect(amount_fib(139583862444)).to eq(55)
    expect(amount_fib(139583862445)).to eq(55)
    expect(amount_fib(139583862446)).to eq(56)
    expect(amount_fib(225851433716)).to eq(56)
    expect(amount_fib(225851433717)).to eq(56)
    expect(amount_fib(225851433718)).to eq(57)
    expect(amount_fib(365435296161)).to eq(57)
    expect(amount_fib(365435296162)).to eq(57)
    expect(amount_fib(365435296163)).to eq(58)
    expect(amount_fib(591286729878)).to eq(58)
    expect(amount_fib(591286729879)).to eq(58)
    expect(amount_fib(591286729880)).to eq(59)
    expect(amount_fib(956722026040)).to eq(59)
    expect(amount_fib(956722026041)).to eq(59)
    expect(amount_fib(956722026042)).to eq(60)
    expect(amount_fib(1548008755919)).to eq(60)
    expect(amount_fib(1548008755920)).to eq(60)
    expect(amount_fib(1548008755921)).to eq(61)
    expect(amount_fib(2504730781960)).to eq(61)
    expect(amount_fib(2504730781961)).to eq(61)
    expect(amount_fib(2504730781962)).to eq(62)
    expect(amount_fib(4052739537880)).to eq(62)
    expect(amount_fib(4052739537881)).to eq(62)
    expect(amount_fib(4052739537882)).to eq(63)
    expect(amount_fib(6557470319841)).to eq(63)
    expect(amount_fib(6557470319842)).to eq(63)
    expect(amount_fib(6557470319843)).to eq(64)
    expect(amount_fib(10610209857722)).to eq(64)
    expect(amount_fib(10610209857723)).to eq(64)
    expect(amount_fib(10610209857724)).to eq(65)
    expect(amount_fib(17167680177564)).to eq(65)
    expect(amount_fib(17167680177565)).to eq(65)
    expect(amount_fib(17167680177566)).to eq(66)
    expect(amount_fib(27777890035287)).to eq(66)
    expect(amount_fib(27777890035288)).to eq(66)
    expect(amount_fib(27777890035289)).to eq(67)
    expect(amount_fib(44945570212852)).to eq(67)
    expect(amount_fib(44945570212853)).to eq(67)
    expect(amount_fib(44945570212854)).to eq(68)
    expect(amount_fib(72723460248140)).to eq(68)
    expect(amount_fib(72723460248141)).to eq(68)
    expect(amount_fib(72723460248142)).to eq(69)
    expect(amount_fib(117669030460993)).to eq(69)
    expect(amount_fib(117669030460994)).to eq(69)
    expect(amount_fib(117669030460995)).to eq(70)
    expect(amount_fib(190392490709134)).to eq(70)
    expect(amount_fib(190392490709135)).to eq(70)
    expect(amount_fib(190392490709136)).to eq(71)
    expect(amount_fib(308061521170128)).to eq(71)
    expect(amount_fib(308061521170129)).to eq(71)
    expect(amount_fib(308061521170130)).to eq(72)
    expect(amount_fib(498454011879263)).to eq(72)
    expect(amount_fib(498454011879264)).to eq(72)
    expect(amount_fib(498454011879265)).to eq(73)
    expect(amount_fib(806515533049392)).to eq(73)
    expect(amount_fib(806515533049393)).to eq(73)
    expect(amount_fib(806515533049394)).to eq(74)
    expect(amount_fib(1304969544928656)).to eq(74)
    expect(amount_fib(1304969544928657)).to eq(74)
    expect(amount_fib(1304969544928658)).to eq(75)
    expect(amount_fib(2111485077978049)).to eq(75)
    expect(amount_fib(2111485077978050)).to eq(75)
    expect(amount_fib(2111485077978051)).to eq(76)
    expect(amount_fib(3416454622906706)).to eq(76)
    expect(amount_fib(3416454622906707)).to eq(76)
    expect(amount_fib(3416454622906708)).to eq(77)
    expect(amount_fib(5527939700884756)).to eq(77)
    expect(amount_fib(5527939700884757)).to eq(77)
    expect(amount_fib(5527939700884758)).to eq(78)
    expect(amount_fib(8944394323791463)).to eq(78)
    expect(amount_fib(8944394323791464)).to eq(78)
    expect(amount_fib(8944394323791465)).to eq(79)
    expect(amount_fib(14472334024676220)).to eq(79)
    expect(amount_fib(14472334024676221)).to eq(79)
    expect(amount_fib(14472334024676222)).to eq(80)
    expect(amount_fib(23416728348467684)).to eq(80)
    expect(amount_fib(23416728348467685)).to eq(80)
    expect(amount_fib(23416728348467686)).to eq(81)
    expect(amount_fib(37889062373143905)).to eq(81)
    expect(amount_fib(37889062373143906)).to eq(81)
    expect(amount_fib(37889062373143907)).to eq(82)
    expect(amount_fib(61305790721611590)).to eq(82)
    expect(amount_fib(61305790721611591)).to eq(82)
    expect(amount_fib(61305790721611592)).to eq(83)
    expect(amount_fib(99194853094755496)).to eq(83)
    expect(amount_fib(99194853094755497)).to eq(83)
    expect(amount_fib(99194853094755498)).to eq(84)
    expect(amount_fib(160500643816367087)).to eq(84)
    expect(amount_fib(160500643816367088)).to eq(84)
    expect(amount_fib(160500643816367089)).to eq(85)
    expect(amount_fib(259695496911122584)).to eq(85)
    expect(amount_fib(259695496911122585)).to eq(85)
    expect(amount_fib(259695496911122586)).to eq(86)
    expect(amount_fib(420196140727489672)).to eq(86)
    expect(amount_fib(420196140727489673)).to eq(86)
    expect(amount_fib(420196140727489674)).to eq(87)
    expect(amount_fib(679891637638612257)).to eq(87)
    expect(amount_fib(679891637638612258)).to eq(87)
    expect(amount_fib(679891637638612259)).to eq(88)
    expect(amount_fib(1100087778366101930)).to eq(88)
    expect(amount_fib(1100087778366101931)).to eq(88)
    expect(amount_fib(1100087778366101932)).to eq(89)
    expect(amount_fib(1779979416004714188)).to eq(89)
    expect(amount_fib(1779979416004714189)).to eq(89)
    expect(amount_fib(1779979416004714190)).to eq(90)
    expect(amount_fib(2880067194370816119)).to eq(90)
    expect(amount_fib(2880067194370816120)).to eq(90)
    expect(amount_fib(2880067194370816121)).to eq(91)
    expect(amount_fib(4660046610375530308)).to eq(91)
    expect(amount_fib(4660046610375530309)).to eq(91)
    expect(amount_fib(4660046610375530310)).to eq(92)
    expect(amount_fib(7540113804746346428)).to eq(92)
    expect(amount_fib(7540113804746346429)).to eq(92)
    expect(amount_fib(7540113804746346430)).to eq(93)
    expect(amount_fib(12200160415121876737)).to eq(93)
    expect(amount_fib(12200160415121876738)).to eq(93)
    expect(amount_fib(12200160415121876739)).to eq(94)
    expect(amount_fib(19740274219868223166)).to eq(94)
    expect(amount_fib(19740274219868223167)).to eq(94)
    expect(amount_fib(19740274219868223168)).to eq(95)
    expect(amount_fib(31940434634990099904)).to eq(95)
    expect(amount_fib(31940434634990099905)).to eq(95)
    expect(amount_fib(31940434634990099906)).to eq(96)
    expect(amount_fib(51680708854858323071)).to eq(96)
    expect(amount_fib(51680708854858323072)).to eq(96)
    expect(amount_fib(51680708854858323073)).to eq(97)
    expect(amount_fib(83621143489848422976)).to eq(97)
    expect(amount_fib(83621143489848422977)).to eq(97)
    expect(amount_fib(83621143489848422978)).to eq(98)
    expect(amount_fib(135301852344706746048)).to eq(98)
    expect(amount_fib(135301852344706746049)).to eq(98)
    expect(amount_fib(135301852344706746050)).to eq(99)
    expect(amount_fib(218922995834555169025)).to eq(99)
    expect(amount_fib(218922995834555169026)).to eq(99)
    expect(amount_fib(218922995834555169027)).to eq(100)
    expect(amount_fib(354224848179261915074)).to eq(100)
    expect(amount_fib(354224848179261915075)).to eq(100)
    expect(amount_fib(354224848179261915076)).to eq(101)
    expect(amount_fib(573147844013817084100)).to eq(101)
    expect(amount_fib(573147844013817084101)).to eq(101)
    expect(amount_fib(573147844013817084102)).to eq(102)
    expect(amount_fib(927372692193078999175)).to eq(102)
    expect(amount_fib(927372692193078999176)).to eq(102)
    expect(amount_fib(927372692193078999177)).to eq(103)
    expect(amount_fib(1500520536206896083276)).to eq(103)
    expect(amount_fib(1500520536206896083277)).to eq(103)
    expect(amount_fib(1500520536206896083278)).to eq(104)
    expect(amount_fib(2427893228399975082452)).to eq(104)
    expect(amount_fib(2427893228399975082453)).to eq(104)
    expect(amount_fib(2427893228399975082454)).to eq(105)
    expect(amount_fib(3928413764606871165729)).to eq(105)
    expect(amount_fib(3928413764606871165730)).to eq(105)
    expect(amount_fib(3928413764606871165731)).to eq(106)
    expect(amount_fib(6356306993006846248182)).to eq(106)
    expect(amount_fib(6356306993006846248183)).to eq(106)
    expect(amount_fib(6356306993006846248184)).to eq(107)
    expect(amount_fib(10284720757613717413912)).to eq(107)
    expect(amount_fib(10284720757613717413913)).to eq(107)
    expect(amount_fib(10284720757613717413914)).to eq(108)
    expect(amount_fib(16641027750620563662095)).to eq(108)
    expect(amount_fib(16641027750620563662096)).to eq(108)
    expect(amount_fib(16641027750620563662097)).to eq(109)
    expect(amount_fib(26925748508234281076008)).to eq(109)
    expect(amount_fib(26925748508234281076009)).to eq(109)
    expect(amount_fib(26925748508234281076010)).to eq(110)
    expect(amount_fib(43566776258854844738104)).to eq(110)
    expect(amount_fib(43566776258854844738105)).to eq(110)
    expect(amount_fib(43566776258854844738106)).to eq(111)
    expect(amount_fib(70492524767089125814113)).to eq(111)
    expect(amount_fib(70492524767089125814114)).to eq(111)
    expect(amount_fib(70492524767089125814115)).to eq(112)
    expect(amount_fib(114059301025943970552218)).to eq(112)
    expect(amount_fib(114059301025943970552219)).to eq(112)
    expect(amount_fib(114059301025943970552220)).to eq(113)
    expect(amount_fib(184551825793033096366332)).to eq(113)
    expect(amount_fib(184551825793033096366333)).to eq(113)
    expect(amount_fib(184551825793033096366334)).to eq(114)
    expect(amount_fib(298611126818977066918551)).to eq(114)
    expect(amount_fib(298611126818977066918552)).to eq(114)
    expect(amount_fib(298611126818977066918553)).to eq(115)
    expect(amount_fib(483162952612010163284884)).to eq(115)
    expect(amount_fib(483162952612010163284885)).to eq(115)
    expect(amount_fib(483162952612010163284886)).to eq(116)
    expect(amount_fib(781774079430987230203436)).to eq(116)
    expect(amount_fib(781774079430987230203437)).to eq(116)
    expect(amount_fib(781774079430987230203438)).to eq(117)
    expect(amount_fib(1264937032042997393488321)).to eq(117)
    expect(amount_fib(1264937032042997393488322)).to eq(117)
    expect(amount_fib(1264937032042997393488323)).to eq(118)
    expect(amount_fib(2046711111473984623691758)).to eq(118)
    expect(amount_fib(2046711111473984623691759)).to eq(118)
    expect(amount_fib(2046711111473984623691760)).to eq(119)
    expect(amount_fib(3311648143516982017180080)).to eq(119)
    expect(amount_fib(3311648143516982017180081)).to eq(119)
    expect(amount_fib(3311648143516982017180082)).to eq(120)
    expect(amount_fib(5358359254990966640871839)).to eq(120)
    expect(amount_fib(5358359254990966640871840)).to eq(120)
    expect(amount_fib(5358359254990966640871841)).to eq(121)
    expect(amount_fib(8670007398507948658051920)).to eq(121)
    expect(amount_fib(8670007398507948658051921)).to eq(121)
    expect(amount_fib(8670007398507948658051922)).to eq(122)
    expect(amount_fib(14028366653498915298923760)).to eq(122)
    expect(amount_fib(14028366653498915298923761)).to eq(122)
    expect(amount_fib(14028366653498915298923762)).to eq(123)
    expect(amount_fib(22698374052006863956975681)).to eq(123)
    expect(amount_fib(22698374052006863956975682)).to eq(123)
    expect(amount_fib(22698374052006863956975683)).to eq(124)
    expect(amount_fib(36726740705505779255899442)).to eq(124)
    expect(amount_fib(36726740705505779255899443)).to eq(124)
    expect(amount_fib(36726740705505779255899444)).to eq(125)
    expect(amount_fib(59425114757512643212875124)).to eq(125)
    expect(amount_fib(59425114757512643212875125)).to eq(125)
    expect(amount_fib(59425114757512643212875126)).to eq(126)
    expect(amount_fib(96151855463018422468774567)).to eq(126)
    expect(amount_fib(96151855463018422468774568)).to eq(126)
    expect(amount_fib(96151855463018422468774569)).to eq(127)
    expect(amount_fib(155576970220531065681649692)).to eq(127)
    expect(amount_fib(155576970220531065681649693)).to eq(127)
    expect(amount_fib(155576970220531065681649694)).to eq(128)
    expect(amount_fib(251728825683549488150424260)).to eq(128)
    expect(amount_fib(251728825683549488150424261)).to eq(128)
    expect(amount_fib(251728825683549488150424262)).to eq(129)
    expect(amount_fib(407305795904080553832073953)).to eq(129)
    expect(amount_fib(407305795904080553832073954)).to eq(129)
    expect(amount_fib(407305795904080553832073955)).to eq(130)
    expect(amount_fib(659034621587630041982498214)).to eq(130)
    expect(amount_fib(659034621587630041982498215)).to eq(130)
    expect(amount_fib(659034621587630041982498216)).to eq(131)
    expect(amount_fib(1066340417491710595814572168)).to eq(131)
    expect(amount_fib(1066340417491710595814572169)).to eq(131)
    expect(amount_fib(1066340417491710595814572170)).to eq(132)
    expect(amount_fib(1725375039079340637797070383)).to eq(132)
    expect(amount_fib(1725375039079340637797070384)).to eq(132)
    expect(amount_fib(1725375039079340637797070385)).to eq(133)
    expect(amount_fib(2791715456571051233611642552)).to eq(133)
    expect(amount_fib(2791715456571051233611642553)).to eq(133)
    expect(amount_fib(2791715456571051233611642554)).to eq(134)
    expect(amount_fib(4517090495650391871408712936)).to eq(134)
    expect(amount_fib(4517090495650391871408712937)).to eq(134)
    expect(amount_fib(4517090495650391871408712938)).to eq(135)
    expect(amount_fib(7308805952221443105020355489)).to eq(135)
    expect(amount_fib(7308805952221443105020355490)).to eq(135)
    expect(amount_fib(7308805952221443105020355491)).to eq(136)
    expect(amount_fib(11825896447871834976429068426)).to eq(136)
    expect(amount_fib(11825896447871834976429068427)).to eq(136)
    expect(amount_fib(11825896447871834976429068428)).to eq(137)
    expect(amount_fib(19134702400093278081449423916)).to eq(137)
    expect(amount_fib(19134702400093278081449423917)).to eq(137)
    expect(amount_fib(19134702400093278081449423918)).to eq(138)
    expect(amount_fib(30960598847965113057878492343)).to eq(138)
    expect(amount_fib(30960598847965113057878492344)).to eq(138)
    expect(amount_fib(30960598847965113057878492345)).to eq(139)
    expect(amount_fib(50095301248058391139327916260)).to eq(139)
    expect(amount_fib(50095301248058391139327916261)).to eq(139)
    expect(amount_fib(50095301248058391139327916262)).to eq(140)
    expect(amount_fib(81055900096023504197206408604)).to eq(140)
    expect(amount_fib(81055900096023504197206408605)).to eq(140)
    expect(amount_fib(81055900096023504197206408606)).to eq(141)
    expect(amount_fib(131151201344081895336534324865)).to eq(141)
    expect(amount_fib(131151201344081895336534324866)).to eq(141)
    expect(amount_fib(131151201344081895336534324867)).to eq(142)
    expect(amount_fib(212207101440105399533740733470)).to eq(142)
    expect(amount_fib(212207101440105399533740733471)).to eq(142)
    expect(amount_fib(212207101440105399533740733472)).to eq(143)
    expect(amount_fib(343358302784187294870275058336)).to eq(143)
    expect(amount_fib(343358302784187294870275058337)).to eq(143)
    expect(amount_fib(343358302784187294870275058338)).to eq(144)
    expect(amount_fib(555565404224292694404015791807)).to eq(144)
    expect(amount_fib(555565404224292694404015791808)).to eq(144)
    expect(amount_fib(555565404224292694404015791809)).to eq(145)
    expect(amount_fib(898923707008479989274290850144)).to eq(145)
    expect(amount_fib(898923707008479989274290850145)).to eq(145)
    expect(amount_fib(898923707008479989274290850146)).to eq(146)
    expect(amount_fib(1454489111232772683678306641952)).to eq(146)
    expect(amount_fib(1454489111232772683678306641953)).to eq(146)
    expect(amount_fib(1454489111232772683678306641954)).to eq(147)
    expect(amount_fib(2353412818241252672952597492097)).to eq(147)
    expect(amount_fib(2353412818241252672952597492098)).to eq(147)
    expect(amount_fib(2353412818241252672952597492099)).to eq(148)
    expect(amount_fib(3807901929474025356630904134050)).to eq(148)
    expect(amount_fib(3807901929474025356630904134051)).to eq(148)
    expect(amount_fib(3807901929474025356630904134052)).to eq(149)
    expect(amount_fib(6161314747715278029583501626148)).to eq(149)
    expect(amount_fib(6161314747715278029583501626149)).to eq(149)
    expect(amount_fib(6161314747715278029583501626150)).to eq(150)
    expect(amount_fib(9969216677189303386214405760199)).to eq(150)
    expect(amount_fib(9969216677189303386214405760200)).to eq(150)
    expect(amount_fib(9969216677189303386214405760201)).to eq(151)
    expect(amount_fib(16130531424904581415797907386348)).to eq(151)
    expect(amount_fib(16130531424904581415797907386349)).to eq(151)
    expect(amount_fib(16130531424904581415797907386350)).to eq(152)
    expect(amount_fib(26099748102093884802012313146548)).to eq(152)
    expect(amount_fib(26099748102093884802012313146549)).to eq(152)
    expect(amount_fib(26099748102093884802012313146550)).to eq(153)
    expect(amount_fib(42230279526998466217810220532897)).to eq(153)
    expect(amount_fib(42230279526998466217810220532898)).to eq(153)
    expect(amount_fib(42230279526998466217810220532899)).to eq(154)
    expect(amount_fib(68330027629092351019822533679446)).to eq(154)
    expect(amount_fib(68330027629092351019822533679447)).to eq(154)
    expect(amount_fib(68330027629092351019822533679448)).to eq(155)
    expect(amount_fib(110560307156090817237632754212344)).to eq(155)
    expect(amount_fib(110560307156090817237632754212345)).to eq(155)
    expect(amount_fib(110560307156090817237632754212346)).to eq(156)
    expect(amount_fib(178890334785183168257455287891791)).to eq(156)
    expect(amount_fib(178890334785183168257455287891792)).to eq(156)
    expect(amount_fib(178890334785183168257455287891793)).to eq(157)
    expect(amount_fib(289450641941273985495088042104136)).to eq(157)
    expect(amount_fib(289450641941273985495088042104137)).to eq(157)
    expect(amount_fib(289450641941273985495088042104138)).to eq(158)
    expect(amount_fib(468340976726457153752543329995928)).to eq(158)
    expect(amount_fib(468340976726457153752543329995929)).to eq(158)
    expect(amount_fib(468340976726457153752543329995930)).to eq(159)
    expect(amount_fib(757791618667731139247631372100065)).to eq(159)
    expect(amount_fib(757791618667731139247631372100066)).to eq(159)
    expect(amount_fib(757791618667731139247631372100067)).to eq(160)
    expect(amount_fib(1226132595394188293000174702095994)).to eq(160)
    expect(amount_fib(1226132595394188293000174702095995)).to eq(160)
    expect(amount_fib(1226132595394188293000174702095996)).to eq(161)
    expect(amount_fib(1983924214061919432247806074196060)).to eq(161)
    expect(amount_fib(1983924214061919432247806074196061)).to eq(161)
    expect(amount_fib(1983924214061919432247806074196062)).to eq(162)
    expect(amount_fib(3210056809456107725247980776292055)).to eq(162)
    expect(amount_fib(3210056809456107725247980776292056)).to eq(162)
    expect(amount_fib(3210056809456107725247980776292057)).to eq(163)
    expect(amount_fib(5193981023518027157495786850488116)).to eq(163)
    expect(amount_fib(5193981023518027157495786850488117)).to eq(163)
    expect(amount_fib(5193981023518027157495786850488118)).to eq(164)
    expect(amount_fib(8404037832974134882743767626780172)).to eq(164)
    expect(amount_fib(8404037832974134882743767626780173)).to eq(164)
    expect(amount_fib(8404037832974134882743767626780174)).to eq(165)
  end
end