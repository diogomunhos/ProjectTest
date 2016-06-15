ready = ->
	$(".media").on "click", ->
		document.location = $(this).data("target")
		return false

	$(".modal").on "shown.bs.modal", ->
		if $("#inputEmail").value != "" and typeof $("#inputEmail").value != "undefined"
			$(this).find("textarea").focus()
		else
			$(this).find("#inputEmail").focus()
		
		

$(document).ready(ready)
$(document).on "page::load", ready			