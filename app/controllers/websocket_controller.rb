class WebsocketController < WebsocketRails::BaseController

  def message_recieve
    # クライアントからのメッセージを取得
    recieve_message = message()
    puts "きてるで -> #{recieve_message}"

    # websocket_chatイベントで接続しているクライアントにブロードキャスト
    broadcast_message(:websocket, recieve_message)
    puts "owari -> #{recieve_message}"
  end

end
