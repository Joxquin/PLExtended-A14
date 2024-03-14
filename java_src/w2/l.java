package w2;

import android.view.ViewTreeObserver;
/* loaded from: classes.dex */
public final class l implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ p f12774d;

    public l(p pVar) {
        this.f12774d = pVar;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        p pVar = this.f12774d;
        float rotation = pVar.f12801l.getRotation();
        if (pVar.f12795f != rotation) {
            pVar.f12795f = rotation;
            pVar.h();
            return true;
        }
        return true;
    }
}
