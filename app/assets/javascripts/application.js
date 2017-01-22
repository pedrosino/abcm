// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require moment
//= require moment/pt-br
//= require bootstrap-datetimepicker
//= require pickers
//= require pt-br
//= require_tree .

$(function() {
  $datetimepicker = $('.date_picker.form-control, .datetime_picker.form-control');
  $datetimepicker.each(function() {
    var $this = $(this);
    var datetimepickerOptions = {
      useStrict: true,
      keepInvalid: true,
      useCurrent: false,
      sideBySide: true,
    };
    $this.datetimepicker(datetimepickerOptions);
  });

  $('.daterange').each(function() {
    var $grupo = $(this).find('.date_picker.form-control');
    var $data1 = $grupo.eq(0);
    var $data2 = $grupo.eq(1);

    $data1.on('dp.hide', function(e) {
      //alert("oi");
      var dataInicial = moment($data1.data("DateTimePicker").date() || false);
      var dataFinal = moment(dataInicial).add(1, 'years').subtract(1, 'days');
      //alert(dataFinal);
      $data2.data("DateTimePicker").date(dataFinal);
    });
  });

  $('[data-toggle="tooltip"]').tooltip();
});
