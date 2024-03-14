package b0;

import android.app.slice.SliceManager;
import android.content.Context;
import f0.H;
/* loaded from: classes.dex */
public final class j implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ l f4169d;

    public j(l lVar) {
        this.f4169d = lVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        l lVar = this.f4169d;
        if (!lVar.f4174d) {
            try {
                lVar.f4177g.a(lVar.f4171a);
                lVar.f4174d = true;
            } catch (SecurityException unused) {
            }
        }
        l lVar2 = this.f4169d;
        Context context = lVar2.f4177g.f4179b;
        this.f4169d.f4172b.execute(new i(this, C0309c.b(((SliceManager) context.getSystemService(SliceManager.class)).bindSlice(lVar2.f4171a, C0309c.a(H.f9090a)), context)));
    }
}
