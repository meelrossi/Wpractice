$(document).ready ->

  $('.principal-images').slick
    infinite: true
    speed: 500
    fade: true
    autoplay: true
    cssEase: 'linear'

  $('.header-link.portfolio').mouseover ->
    $('#portfolios-list').removeClass('portfolios--hidden')
    return

  $('.single-link').mouseover ->
    $('#portfolios-list').addClass('portfolios--hidden')
    return

  $('.container').mouseleave ->
    $('#portfolios-list').addClass('portfolios--hidden')
    return

  $('.full-screen').click ->
    $('#header').toggleClass('navbar-header--hidden')
    $('#footer').toggleClass('footer-full-screen')
    return

  $('.next').click ->
    $('.principal-images').slick('slickNext')
    return

  $('.previous').click ->
    $('.principal-images').slick('slickPrev')
    return

  $('.pause').click ->
    if($('#play-pause').hasClass('glyphicon-pause'))
      $('.principal-images').slick('slickPause')
      $('#play-pause').removeClass('glyphicon-pause');
      $('#play-pause').addClass('glyphicon-play');
    else
      $('.principal-images').slick('slickPlay')
      $('#play-pause').removeClass('glyphicon-play');
      $('#play-pause').addClass('glyphicon-pause');
    return
