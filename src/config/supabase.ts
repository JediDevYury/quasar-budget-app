import { createClient } from '@supabase/supabase-js';
import type { Database } from 'app/database.types';

const supabaseUrl = import.meta.env.VITE_SUPABASE_URL;
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseAnonKey) {
  console.error('Missing environment variables:', {
    supabaseUrl,
    supabaseAnonKey,
    env: import.meta.env,
  });
  throw new Error(
    'Missing Supabase environment variables. Please check your .env.development file.',
  );
}

const supabase = createClient<Database>(supabaseUrl, supabaseAnonKey);

export default supabase;
