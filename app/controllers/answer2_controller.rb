class Answer2Controller < ApplicationController
   def index
    @etroite = Etroite.first

    input1 = (@etroite.fam + ((@etroite.janteexterieur )*2)-((@etroite.voilecreux )*2)-((@etroite.jantelargeur) * 25.4)-((@etroite.voileepaisseur)*2)).round(-1)
    input2 = (@etroite.fam + ((@etroite.jantesepaisseur )*2)+((@etroite.janteexterieur)*2)-((@etroite.voilecreux )*2)-((@etroite.jantelargeur) * 25.4)).round(-1)
    input3 = (@etroite.fam + ((@etroite.janteexterieur )*2)+((@etroite.cic)*2)-((@etroite.voilecreux )*2)-((@etroite.jantelargeur) * 25.4)).round(-1)
    input4 = (@etroite.fam + ((@etroite.voileepaisseur )*2)+((@etroite.jantesepaisseur)*2)+((@etroite.janteexterieur)*2)+((@etroite.cic)*2)-((@etroite.voilecreux )*2)-((@etroite.jantelargeur) * 25.4)).round(-1)
    input5 = (@etroite.fam + ((@etroite.jantelargeur) * 25.4)-((@etroite.voilecreux )*2)-((@etroite.janteexterieur)*2)-((@etroite.jantesepaisseur )*2)-((@etroite.voileepaisseur)*2)).round(-1)
    input6 = (@etroite.fam + @etroite.cic+((@etroite.jantelargeur) * 25.4)-((@etroite.voilecreux )*2)-((@etroite.janteexterieur)*2)-((@etroite.jantesepaisseur)*2)).round(-1)
    input7 = (@etroite.fam + ((@etroite.jantelargeur) * 25.4)-((@etroite.voilecreux )*2)-((@etroite.janteexterieur )*2)).round(-1)
    input8 = (@etroite.fam + ((@etroite.voileepaisseur )*2)+((@etroite.cic)*2)+((@etroite.jantelargeur) * 25.4)-((@etroite.voilecreux )*2)-((@etroite.janteexterieur )*2)).round(-1)
    input9 = (@etroite.fam + ((@etroite.voilecreux )*2)+((@etroite.janteexterieur)*2)-((@etroite.jantelargeur) * 25.4)-((@etroite.voileepaisseur)*2)).round(-1)
    input10 = (@etroite.fam + ((@etroite.voilecreux )*2)+((@etroite.janteexterieur)*2)+((@etroite.cic)*2)-((@etroite.jantelargeur) * 25.4)).round(-1)
    input11 = (@etroite.fam + ((@etroite.voilecreux )*2)+((@etroite.jantesepaisseur )*2)+((@etroite.janteexterieur)*2)-((@etroite.jantelargeur)* 25.4)).round(-1)
    input12 = (@etroite.fam + ((@etroite.voilecreux )*2)+((@etroite.voileepaisseur)*2)+((@etroite.jantesepaisseur )*2)+((@etroite.janteexterieur)*2)+((@etroite.cic)*2)-((@etroite.jantelargeur)* 25.4)).round(-1)
    input13 = (@etroite.fam + ((@etroite.voilecreux )*2)+((@etroite.jantelargeur) * 25.4)-((@etroite.janteexterieur)*2)-((@etroite.jantesepaisseur )*2)-((@etroite.voileepaisseur)*2)).round(-1)
    input14 = (@etroite.fam + ((@etroite.voilecreux )*2)+((@etroite.cic)*2)+((@etroite.jantelargeur) * 25.4)-((@etroite.janteexterieur)*2)-((@etroite.jantesepaisseur )*2)).round(-1)
    input15 = (@etroite.fam + ((@etroite.voilecreux )*2)+((@etroite.jantelargeur) * 25.4)-((@etroite.janteexterieur)*2)).round(-1)
    input16 = (@etroite.fam + ((@etroite.voilecreux )*2)+((@etroite.voileepaisseur)*2)+((@etroite.cic)*2)+((@etroite.jantelargeur) * 25.4)-((@etroite.janteexterieur)*2)).round(-1)
    calculetroit = [input1,input2,input3,input4,input5,input6,input7,input8,input9, input10, input11, input12, input13, input14, input15, input16]
    @sortinputetroit  = calculetroit.sort

  end

  private
  def etroite_params
    params.require(:etroite).permit(
      :jantelargeur,
      :janteexterieur,
      :jantesepaisseur,
      :voilecreux,
      :voileepaisseur,
      :fam,
      :cic
    )
  end
end
