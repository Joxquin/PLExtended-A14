package e;

import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class u extends androidx.core.view.Q {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f8993a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f8994b;

    public /* synthetic */ u(int i4, Object obj) {
        this.f8993a = i4;
        this.f8994b = obj;
    }

    @Override // androidx.core.view.P
    public final void a() {
        int i4 = this.f8993a;
        Object obj = this.f8994b;
        switch (i4) {
            case 0:
                RunnableC0826s runnableC0826s = (RunnableC0826s) obj;
                runnableC0826s.f8990e.f8837w.setAlpha(1.0f);
                runnableC0826s.f8990e.f8840z.d(null);
                runnableC0826s.f8990e.f8840z = null;
                return;
            case 1:
                LayoutInflater$Factory2C0803D layoutInflater$Factory2C0803D = (LayoutInflater$Factory2C0803D) obj;
                layoutInflater$Factory2C0803D.f8837w.setAlpha(1.0f);
                layoutInflater$Factory2C0803D.f8840z.d(null);
                layoutInflater$Factory2C0803D.f8840z = null;
                return;
            default:
                v vVar = (v) obj;
                vVar.f8996b.f8837w.setVisibility(8);
                LayoutInflater$Factory2C0803D layoutInflater$Factory2C0803D2 = vVar.f8996b;
                PopupWindow popupWindow = layoutInflater$Factory2C0803D2.f8838x;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (layoutInflater$Factory2C0803D2.f8837w.getParent() instanceof View) {
                    WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
                    androidx.core.view.B.c((View) layoutInflater$Factory2C0803D2.f8837w.getParent());
                }
                layoutInflater$Factory2C0803D2.f8837w.i();
                layoutInflater$Factory2C0803D2.f8840z.d(null);
                layoutInflater$Factory2C0803D2.f8840z = null;
                ViewGroup viewGroup = layoutInflater$Factory2C0803D2.f8792C;
                WeakHashMap weakHashMap2 = androidx.core.view.J.f3079a;
                androidx.core.view.B.c(viewGroup);
                return;
        }
    }

    @Override // androidx.core.view.Q, androidx.core.view.P
    public final void c() {
        int i4 = this.f8993a;
        Object obj = this.f8994b;
        switch (i4) {
            case 0:
                ((RunnableC0826s) obj).f8990e.f8837w.setVisibility(0);
                return;
            case 1:
                LayoutInflater$Factory2C0803D layoutInflater$Factory2C0803D = (LayoutInflater$Factory2C0803D) obj;
                layoutInflater$Factory2C0803D.f8837w.setVisibility(0);
                if (layoutInflater$Factory2C0803D.f8837w.getParent() instanceof View) {
                    WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
                    androidx.core.view.B.c((View) layoutInflater$Factory2C0803D.f8837w.getParent());
                    return;
                }
                return;
            default:
                return;
        }
    }
}
