import { Platform } from 'quasar';

export default {
  mounted(el: HTMLElement) {
    const input = el.querySelector('input') as HTMLInputElement;
    const delay = Platform.is.capacitor ? 500 : 0;

    setTimeout(() => {
      input.focus();
    }, delay);
  },
};
