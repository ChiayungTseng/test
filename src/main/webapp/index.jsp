<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js">
    </script>
</head>
<body>
<h2>Hello World!</h2>

style="display:none"

<div class="singlebutton"><a href="#99" class="singleA">全部</a></div>
<div class="singlebutton2"><a href="#1" class="singleA">app渠道</a></div>
<div class="singlebutton2"><a href="#2" class="singleA">支付宝渠道</a></div>
<div class="singlebutton2"><a href="#3" class="singleA"><span><input type="checkbox" id="ss"  name="checkbox" value="111"  /> 试一下微信渠道</span></a></div>
<div class="singlebutton2"><a href="#4" class="singleA"><span><input type="checkbox" id="ss"  name="checkbox" value="111" /> 试一下</span></a></div>

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
    var i =1 ;
    $(".singleA").click(function(){


        if($(this).find("input").is(':checked')){
            $(this).find("input").prop('checked',false);
        }else
            $(this).find("input").prop('checked',true);
//        if(i==1){
//            $(this).find("input").prop('checked',true);
//            $(this).find("input").val("222");
//            i=2;
//        }else{
//            $(this).find("input").prop('checked',false);
//            $(this).find("input").val("111");
//            i=1;
//        }


        var ss = $(this).find("input").attr("value");
        alert("----"+ss);
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
