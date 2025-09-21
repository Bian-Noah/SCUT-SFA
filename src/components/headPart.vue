<template>
    <div class="content">
        <div class="iconContent">图标</div>
        <ElMenu class="menu"
        mode="horizontal"
        default-active="activeIndex"
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
    import { ref } from 'vue';
    const activeIndex=ref('/')
</script>
<style scoped>
    .content{
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        background-color: black;
        height: 80px;
    }
    .iconContent{
        color: white;
        height: 100%;
    }
    .menu{
        height: 100%;
        margin-right: 15%;
    }
    .menuItem{
        margin-left: 5%;
        margin-right: 5%;
    }
</style>