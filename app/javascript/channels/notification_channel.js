import consumer from "./consumer"

consumer.subscriptions.create("NotificationChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("is connected to notification channel")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
    console.log("is disconnected from notification channel")
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log("received", data)
    // UPDATE REDUX STORE HERE, TO MAKE DATA AVAILABLE TO THE WHOLE APPLICATION
  }
})
