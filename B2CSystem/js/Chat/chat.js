$('.conLeft li').on('click', function () {
    $(this).addClass('bg').siblings().removeClass('bg');
    var intername = $(this).children('.liRight').children('.intername').text();
    $('.headName').text(intername);
    $('.newsList').html('');
})
$(function () {
    setInterval(function () {
        $.post("/Chat/DUI", function (str) {
            $(".newsList").html(str);
        })
    }, 1000)
})
$('.sendBtn').on('click', function () {
    var news = $('#dope').val();
    if (news == '') {
        alert('不能为空');
    } else {
        $('#dope').val('');
        var str = '';
        var da = new Date();
        var sj = da.toLocaleDateString();
        $.post("/Chat/king", { nr: news }, function (list) {
            //str += '<li>' +
			//	'<div class="nesHead"><img src="../IMG/thumbs/10.jpg"/></div>' +
			//	'<div class="news"><img class="jiao" src="../IMG/thumbs/1.jpg">' + news +
            //    '<br /><span class=\"time\">' + sj + '</span></div>' +
			//'</li>';
            //$('.newsList').append(str);
            //$('.conLeft').find('li.bg').children('.liRight').children('.infor').text(news);
            $('.RightCont')[0].scrollTop = $('.RightCont')[0].scrollHeight;
        });


        //setTimeout(answers, 1000);

    }

})
//function answers() {
//    var arr = ["你好", "你是谁", "瓜娃子", "kangweer", "草尼玛", "之前看到非公开", "之前看到非公开啦", "多少分科目的所发生的", "123456123456�", "规范环境法规和规范化", "地方他发的鬼地方", "好好规划的同仁堂", "规程规范和规范化个财富"];
//    var aa = Math.floor((Math.random() * arr.length));
//    var answer = '';
//    answer += '<li>' +
//                '<div class="answerHead"><img src="../IMG/thumbs/15.jpg"/></div>' +
//                '<div class="answers"><img class="jiao" src="../IMG/thumbs/1.jpg">' + arr[aa] + '</div>' +
//            '</li>';
//    $('.newsList').append(answer);
//    $('.RightCont').scrollTop($('.RightCont')[0].scrollHeight);
//}
$('.ExP').on('mouseenter', function () {
    $('.emjon').show();
})
$('.emjon').on('mouseleave', function () {
    $('.emjon').hide();
})
$('.emjon li').on('click', function () {
    var imgSrc = $(this).children('img').attr('src');
    var str = "";
    str += '<li>' +
            '<div class="nesHead"><img src="../IMG/thumbs/10.jpg"/></div>' +
            '<div class="news"><img class="jiao" src="../IMG/thumbs/1.jpg"><img class="Expr" src="' + imgSrc + '"></div>' +
        '</li>';
    $('.newsList').append(str);
    $('.emjon').hide();
    $('.RightCont').scrollTop($('.RightCont')[0].scrollHeight);
})