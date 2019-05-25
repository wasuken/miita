// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require activestorage
//= require turbolinks
//= require jquery_ujs
//= require_tree .
var good_click = function(id){
    bg_click(id, "goods");
};
var bad_click = function(id){
    bg_click(id, "bads");
};
var bg_click = function(id, bg){
    var req = new XMLHttpRequest();
    req.onreadystatechange = function() {
        if (req.readyState == 4) { // 通信の完了時
            if (req.status == 200) { // 通信の成功時
                alert(bg);
            }
        }
    };
    req.open('POST', '/' + bg + '/create', true);
    req.setRequestHeader('content-type',
                         'application/x-www-form-urlencoded;charset=UTF-8');
    var token = document.querySelector("#authenticity_token").value;
    req.send('id=' + id + "&authenticity_token=" + token);
};
