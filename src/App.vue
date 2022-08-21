<script setup>
    import { RouterView } from 'vue-router'
    import Navbar from './components/Layout/Navbar.vue';
    import Footer from './components/Layout/Footer.vue';
</script>

<template>
    <Navbar />
    <div class="container is-max-desktop px-2 py-4 ">
    <RouterView v-slot="{Component}">
       <!-- transition for routes -->
        <transition 
          enter-active-class="animate__animated animate__fadeInRight"
          mode="out-in">
          <component :is="Component" />
      </transition>
    </RouterView>
    </div>
    <Footer />
</template>

<style>
      @import 'bulma\css\bulma.min.css';
      @import 'animate.css';
      /* colors for dark mode */
      :root{
        --darkColorBg : #1F1F1F;
        --darkColorItems : #303030;
        --darkColorFont : #fff;
        --secondaryColor : #E6642B;
        /* dark palette 
          #03b67a 
          #081832
        */
      }
      html{
        background: #fff;
      }

      .dark{
        background: var(--darkColorBg);
      }
      .dark footer,.dark nav{
        background: var(--darkColorItems) !important;
      }
      .dark .a{
        color: var(--darkColorFont) !important;
      }
      *{
        box-sizing: border-box;
        font-family: 'Edu NSW ACT Foundation', cursive;
      } 
      .top{
        position: absolute;
        width: 20px;
        height: 20px;
        background: red;
        bottom: -50vh;
        right: 2rem;
      } 
</style>