<template>
    <div class="content">
        <ElMenu class="menu"
        mode="horizontal"
        :default-active="$route.path"
        background-color="#000000"
        text-color="#FFFFFF"
        :ellipsis="false"
        router="true">
            <ElMenuItem index="/" class="menuItem">
                首页
            </ElMenuItem>
            <ElMenuItem index="/AboutUs" class="menuItem">
                社团介绍
            </ElMenuItem >
            <ElMenuItem index="/ActivityHistory" class="menuItem">
                活动历程
            </ElMenuItem>
            <ElMenuItem index="/More" class="menuItem">
                更多
            </ElMenuItem>
        </ElMenu>
    </div>
</template>
<script setup>
//导入菜单组件
    import { ElMenu ,ElMenuItem } from 'element-plus';
    // import { useRoute } from 'vue-router';
    // const activeIndex=ref('/')//应该监视当前的路径改变\
    // const path=useRoute().path
    // watch(path,(newvalue)=>{
    //     activeIndex.value=newvalue
    // })
</script>
<style scoped>
    .content{
        display: flex;
        flex-direction: row;
        justify-content:space-between;
        background-color: black;
        height: 100%;
        width: 100%;
    }
    .menu{
        height: 100%;
        width: 100%;
        flex-direction: row;
        justify-content:space-between;
    }
    .menuItem{
        margin-left: 5%;
        margin-right: 5%;
        width: 35%;
        height: 100%;
    }
</style>