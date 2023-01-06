import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseCrendentials {
  static const String API_KEY =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZlZ2JyanpqdW5uY2xxZXBqdHJtIiwicm9sZSI6ImFub24iLCJpYXQiOjE2Njk4NDQ4MzUsImV4cCI6MTk4NTQyMDgzNX0.KDn-osm2z2NMYMSfWe_4M6t_rF29ffrksy0h8tlc2Uo';
  static const String API_URL = 'https://fegbrjzjunnclqepjtrm.supabase.co';

  static SupabaseClient client = SupabaseClient(API_URL, API_KEY);
}
