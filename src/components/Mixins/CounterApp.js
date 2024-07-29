// src/mixins/counterMixin.js
export default {
    name:'CounterApp',
    data() {
      return {
        count: 0,
       hoverCount:0
      };
    },
    methods: {
      increment() {
        this.count += 1;
      },
      hoverincremnet(){
        this.hoverCount+=1
      }
    }
}