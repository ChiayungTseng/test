<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js">
    </script>
</head>
<body>
<h2>Hello World!</h2>

<div class="singlebutton"><a href="#99" class="singleA">全部</a></div>
<div class="singlebutton2"><a href="#1" class="singleA">app渠道</a></div>
<div class="singlebutton2"><a href="#2" class="singleA">支付宝渠道</a></div>
<div class="singlebutton2"><a href="#3" class="singleA">微信渠道</a></div>
<div class="singlebutton2"><a href="#4" class="singleA">小程序</a></div>

<div class="singleB">afd</div>


<div class="singlebutton1">222</div>
<div class="singlebutton2"><a href="#" class="singleA">333</a></div>
<style>
    .singlebutton{
        background-color: aqua;
        padding: 5px;
        display:inline-block;
        border-radius: 5px;
        color: #ffffff;
    }
    .singlebutton1{
        background-color: #dddddd;
        padding: 5px;
        display:inline-block;
        border-radius: 5px;
        color: #000000;
    }

    .singlebutton2{
        background-color: #ffffff;
        padding: 5px;
        display:inline-block;
        box-shadow:0 0 1px #000 inset;
        border-radius: 5px;
        color: #000000;
    }
    .singleA{
        color: #000000;
    }
    a{
        text-decoration:none;
    }
</style>

<script >
    $(".singleA").click(function(){
        $(".singleA").each(function() {
            if($(this).parent().attr('class')=='singlebutton'){
                $(this).parent().removeClass("singlebutton").addClass("singlebutton2");
            }
        });
        $(this).parent().removeClass("singlebutton2").addClass("singlebutton");
//        alert("----"+$(this).attr('href').substring(1));

        var myselect = new Array("微信1","微信2","微信3","微信4","微信5");
//        for(var i =0;i<myselect.length;i++){
//
//        }
        myselect.forEach(function (value,index,array) {
            var $info = $('<div class="singlebutton"><a href="#99" class="singleA">'+value+'</a></div>');
            $(".singleB").append($info);
        })

    });



    <%--${".singleA"}.click(function () {--%>
        <%--alert("11111111111");--%>
        <%--${this}.parent.attr({className:"singlebutton1"});--%>

    <%--});--%>




</script>

</body>




</html>
