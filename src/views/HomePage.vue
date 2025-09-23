<template>
    <div class="homeContent">
        <div  class="welcomeArea">
           <Transition name="el-zoom-in-left" v-show="showBlock">
            <div class="welcome">
                <div class="welcomeText">
                    欢迎访问华工科幻协会官方网站
                </div>
            </div>
           </Transition>
        </div>
        <div   class="introductArea">
            <Transition name="el-zoom-in-bottom" v-show="showBlock">
             <div class="introduct">
                <div class="introductText">
                    华南理工大学科幻协会成立于2008年6月，由第一任社长金鑫前辈等科幻爱好者聚集在一起创建而成，迄今已有16年的历史。

                </div>
             </div>
            </Transition>
        </div>
    </div>
</template>
<script setup>
    //引入动画组件
    import { onMounted, ref, Transition } from 'vue';
    //
    const showBlock=ref(false)
    onMounted(()=>{
        showBlock.value=true
    })
</script>
<style scoped>
    .homeContent{
        width: 100%;
        height: 91%;
        background-image: url("/ddcdd9476c4394c8ba764aa39932c302.png");
        background-size: cover;
    }
    .welcomeArea{
        display: flex;
        justify-content: row;
        align-items: center;
        height: 50%;
    }
    .introductArea{
        display: flex;
        justify-content: row;
        align-items: center;
        height: 50%;
    }
    .welcome{
        background-color:rgb(0,0,0,0.5);
        width: 15%;
        height: 35%;
        border-radius: 10%;
        display: flex;
        justify-content: center;
        align-items: center;
        margin-left: 15%;
    }
    .introduct{
        background-color:rgb(0,0,0,0.5);
        min-width: none;width: 25%;
        min-height: 30%;
        border-radius: 10%;
        display: flex;
        justify-content: center;
        align-items: center;
        margin-left: 15%;
    }
    .welcomeText{
        color: white;
        font-size: 20px;
         opacity: 1;
    }
    .introductText{
        color: white;
        font-size: 20px;
    }
    .el-zoom-in-left-enter-active{
         transition: all 0.3s ease-out;
    }
    .el-zoom-in-bottom-enter-active{
         transition: all 0.3s ease-out;
    }
</style>