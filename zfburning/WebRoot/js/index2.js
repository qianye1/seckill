$(function(){
    var timer = null;
    //当前的索引
    var nowIndex = 0;
    //即将显示的图片的索引
    var nextIndex = 0;
    //1.封装一个运动函数
    function move(){
        //判断当前索引和即将显示的索引的大小
        if(nowIndex < nextIndex){
            $("#imgs img").eq(nowIndex).stop().animate({
                "left":"-720px"
            })
            $("#imgs img").eq(nextIndex).css("left","720px").stop().animate({
                "left":0
            })
        }else if(nowIndex > nextIndex){
            $("#imgs img").eq(nowIndex).stop().animate({
                "left":"720px"
            })
            $("#imgs img").eq(nextIndex).css("left","-720px").stop().animate({
                "left":0
            })
        }
    }
    //2.设置一个定时器让它动起来  自动播放
    function autoPlay(){
        clearInterval(timer)
        timer = setInterval(function(){
            nextIndex++;
            if(nextIndex > 7){
                nextIndex = 0;
                nowIndex = 7;
            }
            //改变小圆点的样式
            $("#list li").removeClass("active")
            $("#list li").eq(nextIndex).addClass("active")
            move()
            nowIndex = nextIndex
        },1000)
    }
    autoPlay()
    //鼠标移入  清除定时器
    $("#box").mouseover(function(){
        clearInterval(timer)
    })
    $("#box").mouseout(function(){
        autoPlay()
    })

    //左右按钮的点击事件
    $("#left").click(function(){
        nextIndex--
        if(nextIndex < 0){
            nowIndex = 0;
            nextIndex =7
        }
        move()
    })
    $("#right").click(function(){
        nextIndex++
        if(nextIndex > 7){
            nextIndex = 0;
            nowIndex =7
        }
        move()
    })
})