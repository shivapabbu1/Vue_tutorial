<template>
  <div id="app">
    <CardWithSlot>
      <template v-slot:header>
        <h2>Card Title</h2>
      </template>
      <template v-slot:default>
        <img src="https://picsum.photos/200" />
      </template>
      <template v-slot:footer>
      <p>footer</p>
      </template>
    </CardWithSlot>

    <CardWithSlot>
    <template v-slot:header>
        <h2>Card for future</h2>
      </template>
     <template v-slot:default>
        <img src="https://picsum.photos/200" />
      </template>
      <template v-slot:footer>
      <p>footer</p>
      </template>
    </CardWithSlot>

    <CardWithSlot>
    <template v-slot:header>
        <h2>Card for scope</h2>
      </template>
     <template v-slot:default>
        <img src="https://picsum.photos/200" />
      </template>
      <template v-slot:footer>
      <p>footer 1</p>
      </template>
    </CardWithSlot>


   
    <!-- Using the LIstNames component with a default slot -->
    <div>
      <LIstNames>
        <template v-slot:default="slotProps">
          {{ slotProps.firstName }} -{{ slotProps.lastName }}
        </template>
      </LIstNames>


      <LIstNames>
        <template v-slot:default="slotProps">
          {{ slotProps.firstName }} 
        </template>
      </LIstNames>
    </div>
  </div>
</template>

<script>
import CardWithSlot from './components/CardWithSlot.vue';
import LIstNames from './components/LIstNames.vue';
export default {
  name: "App",
  components: {
    CardWithSlot,LIstNames
  },
 
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>



/* slots:
props are strict parent-child realtion,so  parent can only pass differnt data to children
where as slots are powerful parent component to control content inside the child content

-->named slots
*/