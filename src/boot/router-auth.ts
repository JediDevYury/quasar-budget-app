import { boot } from 'quasar/wrappers';
import { useAuthStore } from 'src/stores/auth-store';

export default boot(({ router }) => {
  router.beforeEach((to) => {
    const storeAuth = useAuthStore();

    if (!storeAuth.userDetails.id && to.path !== '/auth') {
      return '/auth';
    }
    if (storeAuth.userDetails.id && to.path === '/auth') {
      return false;
    }
  });
});
