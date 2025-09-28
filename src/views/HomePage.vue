<template>
    <div class="homeContent">
            <img src="../assets/icon/12b3ac65f477a1c412712551c21eb7e4.png" 
            class="rocket" alt="">
            <name-card ></name-card>
    </div>
</template>
<script setup>
    //引入动画组件
    import { onMounted, ref, Transition } from 'vue';
    import nameCard from '@/components/nameCard.vue';
    const showBlock=ref(false)
    onMounted(()=>{
        showBlock.value=true
    })
</script>
<style scoped>
    .homeContent{
        width: 100%;
        height: 82%;
        background-size: cover;
        background: linear-gradient(#0673A3,#9DCBE1);
    }
    @keyframes RocketAni {
        from{
            top: 130%;
            left: -40%;
            right: 0;
        }
        to{
             top: 10%;
            left: 20%;
            right: 50%;
        }
    }
    .rocket{
        position: fixed;
         top: 10%;
        left: 20%;
        right: 50%;
        animation: RocketAni 0.8s;
        z-index: 1;
        transform: rotate(23deg) scale(1.6);
    }
</style>