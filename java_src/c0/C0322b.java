package c0;

import android.content.ContentProviderClient;
/* renamed from: c0.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0322b implements AutoCloseable {

    /* renamed from: d  reason: collision with root package name */
    public final ContentProviderClient f4253d;

    public C0322b(ContentProviderClient contentProviderClient) {
        this.f4253d = contentProviderClient;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        ContentProviderClient contentProviderClient = this.f4253d;
        if (contentProviderClient == null) {
            return;
        }
        contentProviderClient.close();
    }
}
