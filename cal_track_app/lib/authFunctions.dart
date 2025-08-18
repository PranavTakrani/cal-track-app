
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'auth_provider.dart';

Future<void> signInWithGoogle(WidgetRef ref) async {
  final supabase = ref.read(supabaseProvider);
  await supabase.auth.signInWithOAuth(
    OAuthProvider.google,
    redirectTo: "https://gktjlubvxzcbceqmfvkj.supabase.co/auth/v1/callback"
    );
}
