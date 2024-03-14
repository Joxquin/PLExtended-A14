package k;

import android.view.ViewTreeObserver;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class S implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f10824d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f10825e;

    public /* synthetic */ S(int i4, Object obj) {
        this.f10824d = i4;
        this.f10825e = obj;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        switch (this.f10824d) {
            case 0:
                if (!((C1128b0) this.f10825e).f10870i.b()) {
                    C1128b0 c1128b0 = (C1128b0) this.f10825e;
                    c1128b0.f10870i.l(c1128b0.getTextDirection(), c1128b0.getTextAlignment());
                }
                ViewTreeObserver viewTreeObserver = ((C1128b0) this.f10825e).getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeOnGlobalLayoutListener(this);
                    return;
                }
                return;
            default:
                X x4 = (X) this.f10825e;
                C1128b0 c1128b02 = x4.f10844H;
                WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
                if (!(androidx.core.view.A.b(c1128b02) && c1128b02.getGlobalVisibleRect(x4.f10842F))) {
                    ((X) this.f10825e).dismiss();
                    return;
                }
                ((X) this.f10825e).r();
                ((X) this.f10825e).show();
                return;
        }
    }
}
