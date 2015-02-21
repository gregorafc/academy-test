ready = ->
  alert $('#visitors').data('user') if $('#visitors').data('user')

$(document).ready(ready)
$(document).on('page:load', ready)



  





