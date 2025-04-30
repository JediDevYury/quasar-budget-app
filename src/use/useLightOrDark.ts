import { Dark } from 'quasar';

export function useLightOrDark(lightString: string, darkString: string) {
  return !Dark.isActive ? lightString : darkString;
}
