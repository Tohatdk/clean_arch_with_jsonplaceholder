importScripts("https://www.gstatic.com/firebasejs/9.10.0/firebase-app-compat.js");
importScripts("https://www.gstatic.com/firebasejs/9.10.0/firebase-messaging-compat.js");

firebase.initializeApp({
  apiKey: 'AIzaSyBw1hEZu2DnNIEkfAs_mUEqBUgS-CECqWA',
  appId: '1:667791985478:web:911532cffa180ac0423347,
  messagingSenderId: '667791985478',
  projectId: 'pushnotitutorial-75506',
  authDomain: 'pushnotitutorial-75506.firebaseapp.com',
  databaseURL:'https://pushnotitutorial-75506-default-rtdb.asia-southeast1.firebasedatabase.app',
  storageBucket: 'pushnotitutorial-75506.appspot.com',
//  measurementId: 'xxx',
});
// Necessary to receive background messages:
const messaging = firebase.messaging();

// Optional:
messaging.onBackgroundMessage((m) => {
  console.log("onBackgroundMessage", m);
});