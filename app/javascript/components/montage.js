 const montage = () => {
     // Get the container element
    // var input1 = document.querySelector("jantelargeur");
    // var montage1 = document.querySelector("montage-1");

    $(".standard_jantelargeur").mouseenter(function(){ $("#montage-1").show(); });
    $(".standard_jantelargeur").mouseleave(function(){ $("#montage-1").hide(); });

    $(".standard_janteexterieur").mouseenter(function(){ $("#montage-2").show(); });
    $(".standard_janteexterieur").mouseleave(function(){ $("#montage-2").hide(); });

    $(".standard_jantesepaisseur").mouseenter(function(){ $("#montage-3").show(); });
    $(".standard_jantesepaisseur").mouseleave(function(){ $("#montage-3").hide(); });

    $(".standard_voilecreux").mouseenter(function(){ $("#montage-4").show(); });
    $(".standard_voilecreux").mouseleave(function(){ $("#montage-4").hide(); });

    $(".standard_voileepaisseur").mouseenter(function(){ $("#montage-5").show(); });
    $(".standard_voileepaisseur").mouseleave(function(){ $("#montage-5").hide(); });

    $(".standard_fam").mouseenter(function(){ $("#montage-6").show(); });
    $(".standard_fam").mouseleave(function(){ $("#montage-6").hide(); });




    $(".etroite_jantelargeur").mouseenter(function(){ $("#montage-1").show(); });
    $(".etroite_jantelargeur").mouseleave(function(){ $("#montage-1").hide(); });

    $(".etroite_janteexterieur").mouseenter(function(){ $("#montage-2").show(); });
    $(".etroite_janteexterieur").mouseleave(function(){ $("#montage-2").hide(); });

    $(".etroite_jantesepaisseur").mouseenter(function(){ $("#montage-3").show(); });
    $(".etroite_jantesepaisseur").mouseleave(function(){ $("#montage-3").hide(); });

    $(".etroite_voilecreux").mouseenter(function(){ $("#montage-4").show(); });
    $(".etroite_voilecreux").mouseleave(function(){ $("#montage-4").hide(); });

    $(".etroite_voileepaisseur").mouseenter(function(){ $("#montage-5").show(); });
    $(".etroite_voileepaisseur").mouseleave(function(){ $("#montage-5").hide(); });

    $(".etroite_fam").mouseenter(function(){ $("#montage-6").show(); });
    $(".etroite_fam").mouseleave(function(){ $("#montage-6").hide(); });

    $(".etroite_cic").mouseenter(function(){ $("#montage-7").show(); });
    $(".etroite_cic").mouseleave(function(){ $("#montage-7").hide(); });


}
 export {montage}
