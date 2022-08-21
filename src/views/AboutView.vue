<template>
  <section class="section about">
    <!-- scroller -->
    <ScrollToTop class="animate__animated animate__fadeInUp" />
    <div class="columns has-text-centered">
      <!-- about -->
      <div class="column">
        <figure class="image is-square">
        <img src="../assets/images/profile.webp">
      </figure>
      </div>
      <div class="column has-text-lightt">
        <h3 class="is-size-1">Eslam Gamal</h3>
        <h5 class="is-size-2">Fronend Developer.</h5>
        <p class="is-size-3">Self-motivated web developer with high level of
        experience working on multiple projects. Passionate
        and hardworking with penchant for meeting deadlines.
        Promotes best practices in web design and offering
        diverse customer project portfolio.</p>
        <a target="_blank" href="https://drive.google.com/file/d/1jUt5rCM_ohkADiFwhjn5gYEa2P45_nSw/view?usp=sharing" class="button is-size-5 mt-5 cv-button">Download CV</a>
      </div>
    </div>
    <!-- skills -->
    <div class="columns py-5 has-text-centered">
        <div class="column is-12">
            <span class="tag is-large has-text-weight-bold is-size-4">
            Skills
          </span>
        </div>
    </div>
    <div class="columns is-mobile is-justify-content-center-mobile py-5 has-text-centered is-multiline">
      <div class="column is-4">
        <span class="tag single-tag is-large has-text-weight-bold"><i style="color:#41b883" class="fa-brands is-size-3 fa-html5"></i></span>
        <p class="p-tags">Html5</p>
      </div>
      <div class="column is-4">
        <span class="tag single-tag is-large has-text-weight-bold"><i style="color:#66d3fa" class="fa-brands is-size-3 fa-css3"></i></span>
        <p class="p-tags">Css3</p>
      </div>
      <div class="column is-4">
        <span class="tag single-tag is-large has-text-weight-bold"><i style="color:#cd6799" class="fa-brands is-size-3 fa-sass"></i></span>
        <p class="p-tags">Sass</p>
      </div>
      <div class="column is-4">
        <span class="tag single-tag is-large has-text-weight-bold"><img class="image is-24x24" src="https://progsoft.net/images/tailwind-css-icon-70187f0341bd945dc65ad050a9a1b8f4fd79b1cf.png" alt="xx"></span>
        <p class="p-tags">Tailwind</p>
      </div>
      <div class="column is-4">
        <span class="tag single-tag is-large has-text-weight-bold"><i style="color:#602c50" class="fa-brands is-size-3 fa-bootstrap"></i></span>
        <p class="p-tags">Bootstrap</p>
      </div>
      <div class="column is-4">
        <span class="tag single-tag is-large has-text-weight-bold"><i style="color:#00D1B2" class="fa-solid is-size-3 fa-file-code"></i></span>
        <p class="p-tags">Bulma css</p>
      </div>
      <div class="column is-4">
        <span class="tag single-tag is-large has-text-weight-bold"><i style="color:##666666" class="fa-brands is-size-3 fa-github"></i></span>
        <p class="p-tags">Github</p>
      </div>
      <div class="column is-4">
        <span class="tag single-tag is-large has-text-weight-bold"><i style="color:#f0db4f" class="fa-brands is-size-3 fa-js"></i></span>
      <p class="p-tags">Javascript</p>
      </div>
      <div class="column is-4">
        <span class="tag single-tag is-large has-text-weight-bold"><i style="color:#41b883" class="fa-brands is-size-3 fa-vuejs"></i></span>
        <p class="p-tags">Vuejs</p>
      </div>
      <div class="column is-4">
        <span class="tag single-tag is-large has-text-weight-bold"><img class="image is-24x24" src="https://pinia.vuejs.org/logo.svg" alt="xx"></span>
        <p class="p-tags">Pinia store</p>
      </div>
      <div class="column is-4">
        <span class="tag single-tag is-large has-text-weight-bold"><i style="color:#FECA32" class="fa-solid is-size-3 fa-fire"></i></span>
        <p class="p-tags">Firebase</p>
      </div>
    </div>
    <!-- info -->
    <div class="columns has-text-centered info-columns is-multiline">
      <div class="column is-12">
        <!--  -->
          <span class="tag is-align-self-center column is-2 is-large has-text-weight-bold is-size-4 my-5">
            General info
          </span>
      </div>
      <div class="column has-text-left">
        <!-- EDUCATION -->
        <p class="is-size-6 has-text-weight-bold pt-5 pb-1">EDUCATION</p>
        <p>- Delta higher institute for computers, Egypt (2013 - 2017).</p>
        <p>- Mangement information systems (Good).</p>
        <p class="is-size-6 has-text-weight-bold pt-5 pb-1">Soft Skills</p>
        <p>- Leadership.</p>
        <p>- Fast Learning.</p>
        <p>- Persistent.</p>
        <p>- Teamwork.</p>
      </div>
      <!-- OTHER -->
      <div class="column has-text-left">
        <p class="is-size-6 has-text-weight-bold pt-5 pb-1">OTHER</p>
        <p>- Date of Birth : 20 - 10 - 1994</p>
        <p>- Langauges : Arabic - English</p>
        <p>- Military status : Completed (May 2018 - May 2019)</p>
      </div>
    </div>
  </section>
</template>

<script setup>
import ScrollToTop from '../components/scrollToTop/scrollToTop.vue'

</script>

<style scoped>
  .is-square{
    box-shadow: -3px -3px 0px 3px #E6642B;
    object-fit: contain;
    transition: box-shadow .3s;
  }
  .is-square:hover{
    box-shadow: 3px 3px 0px 3px #E6642B;
  }
  .cv-button{
    background: var(--secondaryColor) !important;
    color: #fff;
    padding: .3rem 1rem;
  }
  .tag{
    background: var(--secondaryColor);
    color: var(--darkColorFont);
  }
  .single-tag{
    background: var(--darkColorItems);
    padding: 2.5rem;
    transition: .3s;
    cursor: pointer;
  }
  .single-tag:hover{
    background: #E6642B !important;
  }
  .single-tag:hover  .fa-brands{
    transform: rotate(0deg);
    transition: .3s;
    transform: scale(2);
    }
    .fa-brands{
      transition: .3s;
      transform: rotate(-45deg);
    }
  .p-tags{
    color: #000;
    font-size: 1.5rem;
    padding-top: .4rem;
    text-decoration: underline;
  }
  .has-text-lightt{
    color: #000;
  }
  /* dark mode */
  .dark .has-text-lightt{
    color: var(--darkColorFont);
  }
  .dark .single-tag{
    background: var(--darkColorItems);
  }
  .dark .p-tags{
    color: var(--darkColorFont);
    }
    .dark .info-columns{
      color: var(--darkColorFont);
    }
    .has-text-left{
      font-size: 1.2rem;
    }
</style>