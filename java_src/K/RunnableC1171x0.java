package k;

import java.util.WeakHashMap;
/* renamed from: k.x0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1171x0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f11024d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C0 f11025e;

    public /* synthetic */ RunnableC1171x0(C0 c02, int i4) {
        this.f11024d = i4;
        this.f11025e = c02;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f11024d) {
            case 1:
                C1161s0 c1161s0 = this.f11025e.f10732f;
                if (c1161s0 != null) {
                    c1161s0.f10970k = true;
                    c1161s0.requestLayout();
                    return;
                }
                return;
            default:
                C1161s0 c1161s02 = this.f11025e.f10732f;
                if (c1161s02 != null) {
                    WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
                    if (!androidx.core.view.A.b(c1161s02) || this.f11025e.f10732f.getCount() <= this.f11025e.f10732f.getChildCount()) {
                        return;
                    }
                    int childCount = this.f11025e.f10732f.getChildCount();
                    C0 c02 = this.f11025e;
                    if (childCount <= c02.f10742p) {
                        c02.f10729C.setInputMethodMode(2);
                        this.f11025e.show();
                        return;
                    }
                    return;
                }
                return;
        }
    }
}
