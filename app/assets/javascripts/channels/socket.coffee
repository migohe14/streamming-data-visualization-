App.socket = App.cable.subscriptions.create "SocketChannel",
  connected: ->
    console.log("User connected")
  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    console.log(data)

  send_data: (data) ->
    @perform 'send_data', data:data
