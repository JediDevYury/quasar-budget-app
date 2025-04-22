import { Dialog } from 'quasar';

export function useShowErrorMessage() {
  const showErrorMessage = (message: string) => {
    Dialog.create({
      title: 'Error',
      message,
    });
  };

  return { showErrorMessage };
}
