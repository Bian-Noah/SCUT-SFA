<script setup>
    import { ref, Transition ,onMounted} from 'vue';
    const showName=ref(false) //用于
    onMounted(()=>{
        showName.value=true
    })
</script>

<template>
    <Transition name="el-zoom-in-left" v-show="showName" :duration="3000" >
      <div class="content" >
        <p class="Chinese">科幻协会</p>
        <p class="English">Science Fiction Association</p>
       </div>
    </Transition>
</template>
<style scoped>
    .content{
        display: flex;
        flex-direction: column;
        align-items: center;
        position: fixed;
        top: 70%;
        left: 60%;
        transform: translate(-70%, -60%);
        z-index: 120;
        width: 650px;
    }
    p{
        color: white;
    }
    .Chinese{
        font-size:7vw;
        font-weight: 700;
        padding: 0;
        margin: 0;
    }
    .English{
        font-size: 2vw;
        padding: 0;
        margin: 0;
    }
</style>