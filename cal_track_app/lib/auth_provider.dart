import 'package:flutter_riverpod/flutter_riverpod.dart' as riverpod;
import 'package:supabase_flutter/supabase_flutter.dart';

final supabaseProvider = riverpod.Provider<SupabaseClient>((ref) {
  return Supabase.instance.client;
});

final authStateProvider = riverpod.StreamProvider<Session?>((ref) {
  final supabase = ref.watch(supabaseProvider);
  return supabase.auth.onAuthStateChange.map((event) => event.session);
});

