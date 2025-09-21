import { createMemoryHistory,createRouter } from "vue-router";

import AboutUsPage from "@/views/AboutUsPage.vue";
import ActivityHistoryPage from "@/views/ActivityHistoryPage.vue";
import HomePage from "@/views/HomePage.vue";
import MorePage from "@/views/MorePage.vue";


const routes=[
    {path:'/',component:HomePage},
    {path:'/AboutUs',component:AboutUsPage},
    {path:'/ActivityHistory',component:ActivityHistoryPage},
    {path:'/More',component:MorePage}
]
const router=createRouter({
    history:createMemoryHistory(),
    routes,
})
export default router