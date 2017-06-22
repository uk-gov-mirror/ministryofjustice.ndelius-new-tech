$(function() {

  // Show/hide content
  var showHideContent = new GOVUK.ShowHideContent();
  showHideContent.init();

  /**
   * Navigation items
   */
  $('.nav-item').click(function(e) {

    e.preventDefault();

    var target = $(this).data('target');
    if (!$(this).hasClass('active')) {
      $('#jumpNumber').val(target);
      $('#reportForm').submit();
    }
  });

});