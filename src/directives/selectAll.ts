export default {
  mounted(el: HTMLElement) {
    const input = el.querySelector('input') as HTMLInputElement;
    input.addEventListener('focus', () => {
      if (input.value.length) {
        input.select();
      }
    });
  },
};
