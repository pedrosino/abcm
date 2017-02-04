onPage('eventos edit', function() {
  function esconder() {
    if($("#evento_site_externo").is(":checked")) {
      $(".evento_site").show();
      $(".esconder").hide();
    } else {
      $(".evento_site").hide();
      $(".esconder").show();
    }
  }

  esconder();

  $("#evento_site_externo").on("change", function(){
    esconder();
  })
});
