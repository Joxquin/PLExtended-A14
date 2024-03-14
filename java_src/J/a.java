package J;

import android.graphics.Typeface;
/* loaded from: classes.dex */
public final class a implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ E.f f575d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Typeface f576e;

    public a(E.f fVar, Typeface typeface) {
        this.f575d = fVar;
        this.f576e = typeface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        E.f fVar = this.f575d;
        Typeface typeface = this.f576e;
        D.m mVar = fVar.f335a;
        if (mVar != null) {
            mVar.d(typeface);
        }
    }
}
