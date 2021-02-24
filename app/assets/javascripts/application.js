// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require toastr
//= require twitter/bootstrap
//= require bootstrap
//= require moment
//= require bootstrap-datepicker
//= require activestorage
//= require turbolinks
//= require_tree .

$ ( function () {
  $ ( '.datepicker' ). datetimepicker ( {
    format: "YYYY / MM / DD" ,
    icons: {
      previous: "fa fa-arrow-left" ,
      next: "fa fa-arrow-right"
    }
  } );
  } );
  var date = $("#scheduleDate").datepicker({ dateFormat: 'dd,MM,yyyy' }).val();
 $(document).ready(ready)
$(document).on('turbolinks:load', ready)
