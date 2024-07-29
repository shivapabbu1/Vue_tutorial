// src/composables/useCounter.js
import { ref } from 'vue';

export function useCounter(start=0, size=2) {
  const count = ref(start);
  const hoverCount = ref(start);

  const incrementCounter = () => {
    count.value += size;
  };

  const incrementHoverCount = () => {
    hoverCount.value += size;
  };

  return {
    count,
    hoverCount,
    incrementCounter,
    incrementHoverCount
  };
}
