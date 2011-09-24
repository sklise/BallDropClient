$(document).ready(function(){
  $('#connect').click(function(){
    $.ajax({
      type: 'POST',
      url: 'connect'
    })
  });
  $('#disconnect').click(function(){
    $.ajax({
      type: 'POST',
      url: 'x'
    })
  });
  $('#info').click(function(){
    $.ajax({
      type: 'POST',
      url: 'i'
    })
  });
  $('#arrow-up').click(function(){
    $.ajax({
      type: 'POST',
      url: 'u'
    })
  });
  $('#arrow-down').click(function(){
    $.ajax({
      type: 'POST',
      url: 'd'
    })
  });
  $('#arrow-right').click(function(){
    $.ajax({
      type: 'POST',
      url: 'r'
    })
  });
  $('#arrow-left').click(function(){
    $.ajax({
      type: 'POST',
      url: 'l'
    })
  });
});