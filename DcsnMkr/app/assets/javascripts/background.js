$(document).ready(function() {
  var BV = new $.BigVideo({container: $('.people-walk')});
  BV.init();
  BV.show('assets/people-walk.mp4',{ambient:true});
});
