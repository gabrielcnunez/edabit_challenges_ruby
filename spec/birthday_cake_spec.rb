require 'rspec'
require './lib/birthday_cake.rb'

RSpec.describe 'Birthday Cake' do
  it 'constructs a birthday cake based on someones name and age' do
    expect(get_birthday_cake("Jack", 10)).to eq([
      "##############################",
      "# 10 Happy Birthday Jack! 10 #",
      "##############################"
    ])

    expect(get_birthday_cake("Russell", 19)).to eq([
      "*********************************",
      "* 19 Happy Birthday Russell! 19 *",
      "*********************************"
    ])

    expect(get_birthday_cake("Isabelle", 2)).to eq([
      "################################",
      "# 2 Happy Birthday Isabelle! 2 #",
      "################################"
    ])

    # Time for a right mess
    expect(get_birthday_cake("Princess", 40)).to eq(["##################################", "# 40 Happy Birthday Princess! 40 #", "##################################"])
    expect(get_birthday_cake("Maxwell", 85)).to eq(["*********************************", "* 85 Happy Birthday Maxwell! 85 *", "*********************************"])
    expect(get_birthday_cake("Zenobia", 63)).to eq(["*********************************", "* 63 Happy Birthday Zenobia! 63 *", "*********************************"])
    expect(get_birthday_cake("Adrian", 91)).to eq(["********************************", "* 91 Happy Birthday Adrian! 91 *", "********************************"])
    expect(get_birthday_cake("Gayle", 28)).to eq(["###############################", "# 28 Happy Birthday Gayle! 28 #", "###############################"])
    expect(get_birthday_cake("Jo", 69)).to eq(["****************************", "* 69 Happy Birthday Jo! 69 *", "****************************"])
    expect(get_birthday_cake("Val", 80)).to eq(["#############################", "# 80 Happy Birthday Val! 80 #", "#############################"])
    expect(get_birthday_cake("Jo", 22)).to eq(["############################", "# 22 Happy Birthday Jo! 22 #", "############################"])
    expect(get_birthday_cake("Gayle", 4)).to eq(["#############################", "# 4 Happy Birthday Gayle! 4 #", "#############################"])
    expect(get_birthday_cake("Norine", 24)).to eq(["################################", "# 24 Happy Birthday Norine! 24 #", "################################"])
    expect(get_birthday_cake("Val", 63)).to eq(["*****************************", "* 63 Happy Birthday Val! 63 *", "*****************************"])
    expect(get_birthday_cake("Gayle", 25)).to eq(["*******************************", "* 25 Happy Birthday Gayle! 25 *", "*******************************"])
    expect(get_birthday_cake("Princess", 52)).to eq(["##################################", "# 52 Happy Birthday Princess! 52 #", "##################################"])
    expect(get_birthday_cake("Adrian", 90)).to eq(["################################", "# 90 Happy Birthday Adrian! 90 #", "################################"])
    expect(get_birthday_cake("Loyd", 90)).to eq(["##############################", "# 90 Happy Birthday Loyd! 90 #", "##############################"])
    expect(get_birthday_cake("Shelia", 76)).to eq(["################################", "# 76 Happy Birthday Shelia! 76 #", "################################"])
    expect(get_birthday_cake("Evangelina", 75)).to eq(["************************************", "* 75 Happy Birthday Evangelina! 75 *", "************************************"])
    expect(get_birthday_cake("Lorenzo", 15)).to eq(["*********************************", "* 15 Happy Birthday Lorenzo! 15 *", "*********************************"])
    expect(get_birthday_cake("Riva", 4)).to eq(["############################", "# 4 Happy Birthday Riva! 4 #", "############################"])
    expect(get_birthday_cake("Fletcher", 72)).to eq(["##################################", "# 72 Happy Birthday Fletcher! 72 #", "##################################"])
    expect(get_birthday_cake("Hulda", 51)).to eq(["*******************************", "* 51 Happy Birthday Hulda! 51 *", "*******************************"])
    expect(get_birthday_cake("Bari", 15)).to eq(["******************************", "* 15 Happy Birthday Bari! 15 *", "******************************"])
    expect(get_birthday_cake("Dorris", 48)).to eq(["################################", "# 48 Happy Birthday Dorris! 48 #", "################################"])
    expect(get_birthday_cake("Ervin", 83)).to eq(["*******************************", "* 83 Happy Birthday Ervin! 83 *", "*******************************"])
    expect(get_birthday_cake("Cherelle", 80)).to eq(["##################################", "# 80 Happy Birthday Cherelle! 80 #", "##################################"])
    expect(get_birthday_cake("Deedee", 93)).to eq(["********************************", "* 93 Happy Birthday Deedee! 93 *", "********************************"])
    expect(get_birthday_cake("Youlanda", 29)).to eq(["**********************************", "* 29 Happy Birthday Youlanda! 29 *", "**********************************"])
    expect(get_birthday_cake("Deedee", 48)).to eq(["################################", "# 48 Happy Birthday Deedee! 48 #", "################################"])
    expect(get_birthday_cake("Kristine", 6)).to eq(["################################", "# 6 Happy Birthday Kristine! 6 #", "################################"])
    expect(get_birthday_cake("Kristine", 43)).to eq(["**********************************", "* 43 Happy Birthday Kristine! 43 *", "**********************************"])
    expect(get_birthday_cake("Fletcher", 61)).to eq(["**********************************", "* 61 Happy Birthday Fletcher! 61 *", "**********************************"])
    expect(get_birthday_cake("Bari", 94)).to eq(["##############################", "# 94 Happy Birthday Bari! 94 #", "##############################"])
    expect(get_birthday_cake("Clotilde", 35)).to eq(["**********************************", "* 35 Happy Birthday Clotilde! 35 *", "**********************************"])
    expect(get_birthday_cake("Ervin", 98)).to eq(["###############################", "# 98 Happy Birthday Ervin! 98 #", "###############################"])
    expect(get_birthday_cake("Margot", 89)).to eq(["********************************", "* 89 Happy Birthday Margot! 89 *", "********************************"])
    expect(get_birthday_cake("Shelia", 8)).to eq(["##############################", "# 8 Happy Birthday Shelia! 8 #", "##############################"])
    expect(get_birthday_cake("Clotilde", 46)).to eq(["##################################", "# 46 Happy Birthday Clotilde! 46 #", "##################################"])
    expect(get_birthday_cake("Riva", 1)).to eq(["****************************", "* 1 Happy Birthday Riva! 1 *", "****************************"])
    expect(get_birthday_cake("Bobby", 89)).to eq(["*******************************", "* 89 Happy Birthday Bobby! 89 *", "*******************************"])
    expect(get_birthday_cake("Riva", 8)).to eq(["############################", "# 8 Happy Birthday Riva! 8 #", "############################"])
    expect(get_birthday_cake("Todd", 32)).to eq(["##############################", "# 32 Happy Birthday Todd! 32 #", "##############################"])
    expect(get_birthday_cake("Jefferey", 49)).to eq(["**********************************", "* 49 Happy Birthday Jefferey! 49 *", "**********************************"])
    expect(get_birthday_cake("Cherelle", 44)).to eq(["##################################", "# 44 Happy Birthday Cherelle! 44 #", "##################################"])
    expect(get_birthday_cake("Jacques", 7)).to eq(["*******************************", "* 7 Happy Birthday Jacques! 7 *", "*******************************"])
    expect(get_birthday_cake("Maxwell", 84)).to eq(["#################################", "# 84 Happy Birthday Maxwell! 84 #", "#################################"])
    expect(get_birthday_cake("Clotilde", 92)).to eq(["##################################", "# 92 Happy Birthday Clotilde! 92 #", "##################################"])
    expect(get_birthday_cake("Evangelina", 60)).to eq(["####################################", "# 60 Happy Birthday Evangelina! 60 #", "####################################"])
    expect(get_birthday_cake("Dorris", 54)).to eq(["################################", "# 54 Happy Birthday Dorris! 54 #", "################################"])
    expect(get_birthday_cake("Jacqulyn", 52)).to eq(["##################################", "# 52 Happy Birthday Jacqulyn! 52 #", "##################################"])
    expect(get_birthday_cake("Lucrecia", 95)).to eq(["**********************************", "* 95 Happy Birthday Lucrecia! 95 *", "**********************************"])
    expect(get_birthday_cake("Shelia", 75)).to eq(["********************************", "* 75 Happy Birthday Shelia! 75 *", "********************************"])
    expect(get_birthday_cake("Gayle", 59)).to eq(["*******************************", "* 59 Happy Birthday Gayle! 59 *", "*******************************"])
    expect(get_birthday_cake("Margot", 25)).to eq(["********************************", "* 25 Happy Birthday Margot! 25 *", "********************************"])
    expect(get_birthday_cake("Hulda", 55)).to eq(["*******************************", "* 55 Happy Birthday Hulda! 55 *", "*******************************"])
    expect(get_birthday_cake("Adrian", 23)).to eq(["********************************", "* 23 Happy Birthday Adrian! 23 *", "********************************"])
    expect(get_birthday_cake("Stephine", 48)).to eq(["##################################", "# 48 Happy Birthday Stephine! 48 #", "##################################"])
    expect(get_birthday_cake("Loyd", 23)).to eq(["******************************", "* 23 Happy Birthday Loyd! 23 *", "******************************"])
    expect(get_birthday_cake("Dorris", 5)).to eq(["******************************", "* 5 Happy Birthday Dorris! 5 *", "******************************"])
    expect(get_birthday_cake("Riva", 41)).to eq(["******************************", "* 41 Happy Birthday Riva! 41 *", "******************************"])
    expect(get_birthday_cake("Evangelina", 97)).to eq(["************************************", "* 97 Happy Birthday Evangelina! 97 *", "************************************"])
    expect(get_birthday_cake("Jacques", 68)).to eq(["#################################", "# 68 Happy Birthday Jacques! 68 #", "#################################"])
    expect(get_birthday_cake("Todd", 53)).to eq(["******************************", "* 53 Happy Birthday Todd! 53 *", "******************************"])
    expect(get_birthday_cake("Agnus", 18)).to eq(["###############################", "# 18 Happy Birthday Agnus! 18 #", "###############################"])
    expect(get_birthday_cake("Vernita", 88)).to eq(["#################################", "# 88 Happy Birthday Vernita! 88 #", "#################################"])
    expect(get_birthday_cake("Gayle", 7)).to eq(["*****************************", "* 7 Happy Birthday Gayle! 7 *", "*****************************"])
    expect(get_birthday_cake("Jacques", 95)).to eq(["*********************************", "* 95 Happy Birthday Jacques! 95 *", "*********************************"])
    expect(get_birthday_cake("Kasandra", 57)).to eq(["**********************************", "* 57 Happy Birthday Kasandra! 57 *", "**********************************"])
    expect(get_birthday_cake("Phoebe", 39)).to eq(["********************************", "* 39 Happy Birthday Phoebe! 39 *", "********************************"])
    expect(get_birthday_cake("Fletcher", 76)).to eq(["##################################", "# 76 Happy Birthday Fletcher! 76 #", "##################################"])
    expect(get_birthday_cake("Kristine", 12)).to eq(["##################################", "# 12 Happy Birthday Kristine! 12 #", "##################################"])
  end
end