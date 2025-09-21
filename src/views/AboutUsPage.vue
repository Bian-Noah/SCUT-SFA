<template>
    关于我们
    测试闭包
    <button @click="test()">按钮</button>
</template>
<script setup>
    function testMother(){
        console.log('闭包函数启动')
        let i=0
        function t(){
            i++
            console.log(i)
        }
        return t
    }
    const test=testMother()

</script>