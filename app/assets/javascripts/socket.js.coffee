# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  ws_rails = new WebSocketRails('localhost:3000/websocket')
  ws_rails.bind 'websocket', (message) ->
    message_li = document.createElement('li')
    message_li.textContent = message
    document.getElementById('chat_area').appendChild message_li


  document.getElementById('send').onclick = ->
    comment = document.getElementById('comment').value
    ws_rails.trigger 'websocket', comment
