(function($){
  $(document).ready(function(){
		$('body').on('click', "form#update-cart a.delete", function(){
      $(this).parents('tr').find('input.line_item_quantity').val(0);
      $(this).parents('form').submit();
      return false;
    });

    $('#add-to-cart-ajax-link').show();
    $('#add-to-cart-button').hide();

    $('#add-to-cart-ajax-link').click(function(){
      var amount = $('input[name^="variants"]:first').val();

      $(this).attr('href', function(i, h) {
        return h + (h.indexOf('?') != -1 ? "&amount=" : "?amount=") + amount;
      });
    });
  });
})(jQuery);
