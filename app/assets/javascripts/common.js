$( function () {
  $('.datepicker' ). datetimepicker({
    format: "YYYY / MM / DD",
    icons: {
      previous: "fa fa-arrow-left",
      next: "fa fa-arrow-right"
    }
  } );
  } );
var date = $("#scheduleDate").datepicker({ dateFormat: 'dd,MM,yyyy' }).val();
 $(document).ready(ready)
 $(document).on('turbolinks:load', ready)
