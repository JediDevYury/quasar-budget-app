import { Dialog } from 'quasar';

export function useShowErrorMessage() {
  return (message: string, tag: string) => {
    Dialog.create({
      title: tag ? 'Fetching ' + tag + ' failed' : 'Something went wrong!',
      message,
    });
  };
}
