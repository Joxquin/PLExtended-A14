package b0;

import android.app.slice.SliceManager;
import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;
import f0.H;
import q.C1355f;
import q.C1357h;
/* loaded from: classes.dex */
public final class n extends m {

    /* renamed from: c  reason: collision with root package name */
    public final C1355f f4180c;

    /* renamed from: d  reason: collision with root package name */
    public final C1355f f4181d;

    /* renamed from: e  reason: collision with root package name */
    public final SliceManager f4182e;

    /* renamed from: f  reason: collision with root package name */
    public final C1357h f4183f;

    public n(Context context) {
        super(context);
        this.f4180c = new C1355f();
        this.f4181d = new C1355f();
        this.f4182e = (SliceManager) context.getSystemService(SliceManager.class);
        this.f4183f = C0309c.a(H.f9090a);
    }

    @Override // b0.m
    public final void a(Uri uri) {
        try {
            this.f4182e.pinSlice(uri, this.f4183f);
        } catch (RuntimeException e4) {
            ContentProviderClient acquireContentProviderClient = this.f4179b.getContentResolver().acquireContentProviderClient(uri);
            if (acquireContentProviderClient != null) {
                acquireContentProviderClient.release();
                throw e4;
            }
            throw new IllegalArgumentException("No provider found for " + uri);
        }
    }

    @Override // b0.m
    public final void c(Uri uri) {
        try {
            this.f4182e.unpinSlice(uri);
        } catch (IllegalStateException unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.slice.Slice d(android.net.Uri r7) {
        /*
            r6 = this;
            java.lang.String r0 = r7.getAuthority()
            q.f r1 = r6.f4181d
            java.lang.Object r2 = r1.get(r0)
            java.lang.String r2 = (java.lang.String) r2
            android.content.Context r3 = r6.f4179b
            r4 = 0
            if (r2 != 0) goto L21
            android.content.pm.PackageManager r2 = r3.getPackageManager()
            android.content.pm.ProviderInfo r2 = r2.resolveContentProvider(r0, r4)
            if (r2 != 0) goto L1c
            goto L48
        L1c:
            java.lang.String r2 = r2.packageName
            r1.put(r0, r2)
        L21:
            q.f r0 = r6.f4180c
            java.lang.Object r1 = r0.get(r2)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            if (r1 != 0) goto L44
            android.content.pm.PackageManager r1 = r3.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L48
            android.content.pm.ApplicationInfo r1 = r1.getApplicationInfo(r2, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L48
            int r1 = r1.flags     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L48
            r5 = 1073741824(0x40000000, float:2.0)
            r1 = r1 & r5
            if (r1 == 0) goto L3c
            r1 = 1
            goto L3d
        L3c:
            r1 = r4
        L3d:
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L48
            r0.put(r2, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L48
        L44:
            boolean r4 = r1.booleanValue()
        L48:
            if (r4 == 0) goto L4c
            r6 = 0
            return r6
        L4c:
            q.h r0 = r6.f4183f
            android.app.slice.SliceManager r6 = r6.f4182e
            android.app.slice.Slice r6 = r6.bindSlice(r7, r0)
            androidx.slice.Slice r6 = b0.C0309c.b(r6, r3)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: b0.n.d(android.net.Uri):androidx.slice.Slice");
    }
}
