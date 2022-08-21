<template>
  <section class="section work has-text-light">
    <ScrollToTop class="animate__animated animate__fadeInUp" />
    <nav class="breadcrumb is-size-3-tablet is-centered" aria-label="breadcrumbs">
      <ul>
        <li><a href="#">Web Design</a></li>
        <li><a href="#">Technology</a></li>
        <li><a href="#">Frontend Developing</a></li>
      </ul>
    </nav>
    <!-- my projects div -->
    <div class="columns is-multiline is-centered py-5 has-text-centered">
      <div
        v-for="project in storeInfo.projects"
        :key="project.id"
        class="column is-5 m-3 has-background-grey-darkerr"
      >
        <figure class="image is-centered is-square">
          <div class="overlay"></div>
        <img :src="project.image"  alt="card">
        </figure>
        <h1 class="py-2 is-size-4">{{ project.title }}</h1>
        <p>{{ project.desc }}</p>
        <div class="tags is-centered has-text-weight-bold mt-3">
        <span class="tag"> {{ project.techs.css }} </span>
        <span class="tag"> {{ project.techs.js }} </span>
        <span class="tag"> {{ project.techs.sass }} </span>
        <span class="tag"> {{ project.techs.server }} </span>
        </div>
        <a class="visit-website" target="_blank" :href="project.link">
          <span class="icon-text">
          <span class="icon">
            <i class="fa-solid fa-up-right-from-square"></i>
            </span>
            <span>GIVE IT A TRY</span>
          </span>
        </a>
      </div>
    </div>
    
  </section>
</template>

<script setup>
// imports
  import { useInfoStore } from '../stores/info'
  import ScrollToTop from '../components/scrollToTop/scrollToTop.vue'
  // store
  const storeInfo = useInfoStore()
</script>

<style scoped>
.has-background-grey-darkerr{
  background: var(--darkColorItems);
}
.dark .breadcrumb{
  background: transparent !important;
}
.dark .breadcrumb a{
  color: var(--darkColorFont);
}
.dark .has-background-grey-darkerr{
  background: var(--darkColorItems);
}
.breadcrumb a{
  color: #000;
}
  .tags .tag{
    background: var(--secondaryColor);
    color: var(--darkColorFont);
  }
  figure{
    position: relative;
    overflow: hidden;
    transition: .4s;
  }
  figure:hover .overlay{
    z-index: 5;
    transform: translate(0);
    transition: .4s;
  }

  .overlay{
    background: rgba(255,255,255,.3);
    width: 100%;
    height: 100%;
    position: absolute;
    top: 0;
    left: 0;
    transform: translate(150%);
    transition: .4s;
  }
  img{
    object-fit: cover;
    /* transition: .6s; */
  }
  /* img:hover{
    transform: scale(1.3);
  } */

  .visit-website{
    color: var(--darkColorFont);
  }
      
</style>