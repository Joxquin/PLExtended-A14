package L1;

import android.graphics.Path;
/* loaded from: classes.dex */
public final /* synthetic */ class c0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b f1161a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ K f1162b;

    public /* synthetic */ c0(com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar, K k4) {
        this.f1161a = bVar;
        this.f1162b = k4;
    }

    public final void a(Path path) {
        com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar = this.f1161a;
        if (bVar.f6461s != null) {
            if (path != null) {
                K k4 = this.f1162b;
                path.offset(k4.getLeft(), k4.getTop());
            }
            B b4 = bVar.f6461s;
            Path path2 = b4.f1055p;
            if (path == path2) {
                return;
            }
            b4.f1056q = path2;
            b4.f1055p = path;
            b4.invalidate();
            b4.f1054o = 1.0f;
        }
    }
}
