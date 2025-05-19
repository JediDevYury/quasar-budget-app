import { createClient } from '@supabase/supabase-js';
import type { Database } from 'app/database.types';

const config = {
  supabaseUrl: import.meta.env.VITE_SUPABASE_URL,
  supabaseAnonKey: import.meta.env.VITE_SUPABASE_ANON_KEY,
};

if (!config.supabaseUrl || !config.supabaseAnonKey) {
  console.error('Missing environment variables:', {
    ...config,
    env: import.meta.env,
  });
  throw new Error(
    'Missing Supabase environment variables. Please check your .env.development file.',
  );
}

const supabase = createClient<Database>(config.supabaseUrl, config.supabaseAnonKey);

export default supabase;
