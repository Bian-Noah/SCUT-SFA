<template>
    <div class="all" @wheel="wheeLchangeRoute($event)">
        <ElAffix>
            <headPart class="headContent"></headPart>
        </ElAffix>
        <RouterView></RouterView>
    </div>
</template>
<script setup>
    import headPart from './components/headPart.vue';
    //引入固钉
    import { ElAffix } from 'element-plus';
    //引入编程式导航需要的元素
    import { useRouter } from 'vue-router';
    const router=useRouter()
    function wheeLchangeRouteMother(){
        let i=0 //记录跳转到的页面 通过闭包实现
        let timer=null //实现节流
        return  function(e){
        //设置路由对象
            const routes=[{path:'/'},
            {path:'/AboutUs'},
            {path:'/ActivityHistory'},
            {path:'/More'}]
        //以上是个数组
        //判断向上跳转还是向下跳转
            if(!timer){//定时器不存在时就可以跳转
            e.deltaY<0 ? i--:i++
            //进行跳转
            if(i<0){
                i=3
            }else if(i>3){
                i=0
            }
            if(e.deltaY>0){
                console.log('向下滚动',e.deltaY,i)
            }else{
                console.log('向上滚动',e.deltaY,i)
            }
            //注意，滚轮向下滑，deltaY是大于0
            router.push(routes[i].path)
            //跳转后应该设置会自动清空的定时器
            timer=setTimeout(() => {
                timer=null
            }, 500);
            }
        }
    }
    const wheeLchangeRoute=wheeLchangeRouteMother()
</script>
<style scoped>
    .all{
        height: 100%;
        width: 100%;
    }
</style>