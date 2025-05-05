import { defineStore } from 'pinia';
import { reactive, watch, ref } from 'vue';
import { Dark, LocalStorage } from 'quasar';
import supabase from 'src/config/supabase';
import { useAuthStore } from 'stores/auth-store';
import { useShowErrorMessage } from 'src/use/useShowErrorMessage';

export const useSettingsStore = defineStore('settings', () => {
  /*
    state
  */

  const settings = reactive({
    promptToDelete: true,
    showRunningBalance: false,
    currencySymbol: '$',
    darkMode: false, // false | true | 'auto'
  });

  const avatarUrl = ref<string | null>(null)
  const avatarFile = ref<File | null>(null)

  const authStore = useAuthStore()
  const showErrorMessage = useShowErrorMessage()

  // watch darkMode
  watch(
    () => settings.darkMode,
    (value) => {
      Dark.set(value);
    },
    { immediate: true },
  );

  // watch settings
  watch(settings, () => {
    saveSettings();
  });

  /*
    getters
  */

  const getAvatarUrl = async () => {
    const {data: profiles, error} = await supabase.from('profiles')
      .select('*')
      .eq('id', authStore.getUserId())

    if(error) {
      showErrorMessage(error.message, "getAvatarUrl")
      return;
    }

    if(profiles?.length && profiles[0]?.avatar_filename) {
      const avatarFilename = profiles[0].avatar_filename
      const path = `${authStore.getUserId()}/${avatarFilename}`
      const { data } = supabase
        .storage
        .from('avatars')
        .getPublicUrl(path)

      avatarUrl.value = data.publicUrl
    }

  }
  /*
    actions
  */

  const saveSettings = () => {
    LocalStorage.set('settings', settings);
  };

  const loadSettings = () => {
    const savedSettings = LocalStorage.getItem('settings');
    if (savedSettings) Object.assign(settings, savedSettings);
  };

  const saveAvatarFilename = async (filename: string) => {
    const {error} = await supabase.from('profiles').upsert({
      id: authStore.getUserId(),
      avatar_filename: filename
    }).select()

    if(error) {
      showErrorMessage(error.message, "saveAvatarFilename")
      return
    }

    await getAvatarUrl()
  }

  const uploadAvatar = async (file: File) => {
    const folderPath = `${authStore.getUserId()}/${Date.now()}_${file.name}`
    const {data, error} = await supabase.storage.from('avatars')
      .upload(folderPath, file)
    if(error) {
      showErrorMessage(error.message, "uploadAvatar")
      return
    }
    if(data) {
      const avatarFilename = data.fullPath.split('/').pop()
      if(!avatarFilename) return
      await saveAvatarFilename(avatarFilename)
    }
  }

  const resetProfile = () => {
    avatarUrl.value = null
    avatarFile.value = null
  }

  /*
    return
  */

  return {
    // state
    settings,
    avatarUrl,
    avatarFile,

    // getters

    // actions
    resetProfile,
    getAvatarUrl,
    uploadAvatar,
    loadSettings,
  };
});
