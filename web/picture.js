var current_index=0;
var timer=window.setInterval(autoChange,3000);
//获取轮按钮
var button_li=document.getElementById("button").getElementsByTagName("li");
//获取轮播图
var pic_div=document.getElementById("box").getElementsByTagName("div");
//遍历元素
for(var i =0;i<button_li.length;i++){
  //添加鼠标滑过事件
  button_li[i].onmouseover=function(){
    //定时器存在时清除定时器
    if(timer){
      clearInterval(timer);
    }
    for(var j=0;j<pic_div.length;j++){
      if(button_li[j]==this){
        current_index=j;//从当前索引位置开始
        button_li[j].className="current";
        pic_div[j].className="current";
      }else{
        //将所有元素改变样式
        pic_div[j].className="pic";
        button_li[j].className="but";
      }
    }
  }
//鼠标移出事件
button_li[i].onmouseout=function(){
  //启动定时器，恢复自动切换
  timer=setInterval(autoChange,3000)
 }
}
function autoChange(){
  //自增索引
  ++current_index;
  //当自增索引到达上限时，索引归0
  if(current_index==button_li.length){
    current_index=0;
  }
  for(var i=0;i<button_li.length;i++){
    if(i==current_index){
      button_li[i].className="current";
      pic_div[i].className="current";
    }else{
      button_li[i].className="but";
      pic_div[i].className="pic";
    }
  }
}