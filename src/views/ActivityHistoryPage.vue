<template>
    <ElContainer class="all">
       <Transition name="el-zoom-in-center" v-show="showBlock">
           <ElMain class="main">
            <ElCarousel class="carousel" height="870px" interval="3000"
            :pause-on-hover="true" motion-blur="true">
                <ElCarouselItem v-for="(item,index) in content" class="carouselItem" key="item">
                    <img :src="item.path" alt="" class="imgContent">
                </ElCarouselItem>
            </ElCarousel>
           </ElMain>
       </Transition>
    </ElContainer>
</template>
<script setup>
    //引入组件
    import { ElContainer,ElMain,ElCarousel,ElCarouselItem } from 'element-plus'
    import { onMounted,Transition,ref } from 'vue';
    import {getAssetPath} from "../utils/assetPath"
    //设置内容数组w
    const content=[
       {path:getAssetPath("/activityHistoryImage/46b2333f3d00d1c27ab2c0d2b747867c.jpg")},
      {path:getAssetPath("/activityHistoryImage/99c09d8006c6a2e3b31122f2d3d35753.jpg")},
       {path:getAssetPath("/activityHistoryImage/a19e8c58df740b9f8bf24e95a803be2c.jpg")},
       {path:getAssetPath("/activityHistoryImage/cef0f6340a76bdfd838e9188584528b0.jpg")}
    ]
    //实现动画效果
     const showBlock=ref(false)
    onMounted(()=>{
        showBlock.value=true
    })
</script>
<style scoped>
    .all{
        height: 91%;
        width: 100%;
    }
    .main{
        height: 100%;
        width: 100%;
    }
    .imgContent{
        height: 100%;
        width: 100%;
    }
    /* .carousel{
        background-color: black;
    }
    .carouselItem{
        background-color: black;
    } */
</style>