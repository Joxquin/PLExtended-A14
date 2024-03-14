package c0;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.net.Uri;
/* renamed from: c0.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0323c {
    public static C0322b a(ContentResolver contentResolver, Uri uri) {
        ContentProviderClient acquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri);
        if (acquireUnstableContentProviderClient != null) {
            return new C0322b(acquireUnstableContentProviderClient);
        }
        throw new IllegalArgumentException("No provider found for " + uri);
    }
}
