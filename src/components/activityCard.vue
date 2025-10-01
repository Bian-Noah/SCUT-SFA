<template>
    <div class="content">
        <div class="head">
            <button class="headButton">了解更多</button>
        </div>
        <div class="middle"></div>
        <div class="root">
            <p class="titleText">
                往期活动
            </p>
            <div class="contentArea">
                 <p class="contentText">
                在CSS中，position属性决定了元素在文档中的定位方式。这个属性与top、right、bottom和left属性一起工作，以确定定位元素的最终。
                </p>
            </div>
        </div>
    </div>

</template>
<style scoped>
    .content{
        border-radius: 5%;
        position: relative;
        display: flex;
        width: 100%;
        border: 2px solid black;
        flex-direction: column;
        justify-content: space-between;
        height: 100%;
        overflow: hidden;
    }
    .head{
        color: white;
        font-weight: 300;
        position: absolute;
        min-width: 25%;
        min-height: 4%;
        top: 2%;
        left: 70%;
    }
    .headButton{
        border-radius: 30%;
        background-color: black;
        color:white;
        width: 100%;
    }
    .middle{
        height: 100%;
        width: 100%;
        background-image:url(public/活动历程图片/cef0f6340a76bdfd838e9188584528b0.jpg) ;
        background-size: cover;
    }
    .root{
        position: absolute;
        top: 70%;
        height: 30%;
        width: 100%;
        background:linear-gradient(rgba(126, 143, 223,0.7),#0911D6 50%)
    }
    .titleText{
        font-size: 1.8vw;
        padding: 0.5%;
        color: white;
        font-weight: 700;
    }
    .contentText{
        font-size: 0.6vw;
        color: white;
        padding: 2%;
    }
    .contentArea{
        display: flex;
        justify-content: center;
        align-items: center;
    }
</style>