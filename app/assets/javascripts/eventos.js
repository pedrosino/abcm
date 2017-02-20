onPage('eventos edit, eventos new', function() {
  function esconder() {
    if($("#evento_site_externo").is(":checked")) {
      $(".evento_site").show();
      $(".esconder").hide();
      $('.esconder').find('textarea').val('');
    } else {
      $(".esconder").show();
      $(".evento_site").hide();
      $('.evento_site').find('input').val('');
    }
  }

  esconder();

  $("#evento_site_externo").on("change", function(){
    esconder();
  })
});
