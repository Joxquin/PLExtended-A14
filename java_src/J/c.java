package J;

import android.os.Handler;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final E.f f579a;

    /* renamed from: b  reason: collision with root package name */
    public final Handler f580b;

    public c(E.f fVar, Handler handler) {
        this.f579a = fVar;
        this.f580b = handler;
    }

    public final void a(i iVar) {
        int i4 = iVar.f595b;
        boolean z4 = i4 == 0;
        Handler handler = this.f580b;
        E.f fVar = this.f579a;
        if (z4) {
            handler.post(new a(fVar, iVar.f594a));
        } else {
            handler.post(new b(fVar, i4));
        }
    }
}
