# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
<<<<<<< HEAD
$ ->
  $(document).on 'change', '#building_select', (evt) ->
    $.ajax '/offers/update_corpus',
      type: 'GET'
      dataType: 'script'
      data: {
        building_id: $("#building_select option:selected").val()
        offer_id: $("#building_select option:selected").data("offerid")

      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic country select OK!")
=======
>>>>>>> CreateOffers
