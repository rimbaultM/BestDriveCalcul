class AnswerController < ApplicationController

  def index
    @standard = Standard.first

    input1 = (@standard.fam + ((@standard.janteexterieur)*2)-((@standard.voilecreux )*2)- ((@standard.jantelargeur) * 25.4)).round(-1)
    input2 = (@standard.fam + ((@standard.voileepaisseur)*2)+((@standard.jantesepaisseur )*2)+((@standard.janteexterieur)*2)-((@standard.voilecreux)*2)-((@standard.jantelargeur) * 25.4)).round(-1)
    input3 = (@standard.fam + ((@standard.jantelargeur)* 25.4)-((@standard.voilecreux )*2)-((@standard.janteexterieur)*2)-((@standard.jantesepaisseur)*2)).round(-1)
    input4 = (@standard.fam + ((@standard.voileepaisseur)*2)+((@standard.jantelargeur)* 25.4)-((@standard.voilecreux )*2)-((@standard.janteexterieur)*2)).round(-1)
    input5 = (@standard.fam + ((@standard.voilecreux )*2)+((@standard.janteexterieur)*2)-((@standard.jantelargeur) * 25.4)).round(-1)
    input6 = (@standard.fam + ((@standard.voilecreux )*2)+((@standard.voileepaisseur)*2)+((@standard.jantesepaisseur )*2)+((@standard.janteexterieur)*2)-((@standard.jantelargeur) * 25.4)).round(-1)
    input7 = (@standard.fam + ((@standard.voilecreux )*2)+((@standard.jantelargeur) * 25.4)-((@standard.janteexterieur)*2)-((@standard.jantesepaisseur)*2)).round(-1)
    input8 = (@standard.fam + ((@standard.voilecreux )*2)+((@standard.jantesepaisseur)*2)+((@standard.jantelargeur) * 25.4)-((@standard.janteexterieur)*2)).round(-1)
    calculstandard = [input1,input2,input3,input4,input5,input6,input7,input8]
    @sortinputstandard = calculstandard.sort

  end

  private
  def standard_params
    params.require(:standard).permit(
      :jantelargeur,
      :janteexterieur,
      :jantesepaisseur,
      :voilecreux,
      :voileepaisseur,
      :fam
    )
  end
end
