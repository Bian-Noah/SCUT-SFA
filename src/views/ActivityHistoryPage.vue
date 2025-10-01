<template>
   <div class="allPart">
      <div class="titlePart">
         <p class="titleOne">
            往期活动
         </p>
         <p class="titleTwo">   
            5cience Fiction Association
         </p>
      </div>
      <div class="contentPart">
         <activityCard class="card"></activityCard>
         <activityCard class="card"></activityCard>
         <activityCard class="card"></activityCard>
      </div>
   </div>
</template>
<script setup>
   import activityCard from '@/components/activityCard.vue';
    //<activityCard class="card"></activityCard>
</script>
<style scoped>  
   .allPart{
      width: 100%;
      height: 100%;
      background:linear-gradient(#CAD7FA,#EBEDFE);
   }
   .titlePart{
      width: 100%;
      height: 15%;
      display: flex;
      justify-content: center;
      flex-direction: column;
      align-items: center;
   }
   .titleOne{
      font-size: 3vw;
      font-weight: 700;
      color: white;
   }
   .titleTwo{
      font-size: 1vw;
      color: white;
   }
   .contentPart{
      display: flex;
      width: 100%;
      height: 85%;
      flex-direction: row;
      justify-content: space-around;
      flex-wrap: wrap;
   }
   .card{
        height: 57%;
        width: 20%;
        margin-top: 10%;
        animation: aini 0.5s;
   }
   @keyframes aini {
      from{
       height: 0%;
        width: 0%;
        margin-top: 40%;
      }to{
          height: 57%;
          width: 20%;
          margin-top: 10%;
      }
   }
</style>
