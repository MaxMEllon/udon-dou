$(window).on 'page:fetch', ->
  NProgress.start()

$(window).on 'page:load page:restore page:change', ->
  NProgress.done()
