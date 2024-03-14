package g0;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: g0.A  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewTreeObserver$OnPreDrawListenerC0930A implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: d  reason: collision with root package name */
    public final x f9361d;

    /* renamed from: e  reason: collision with root package name */
    public final ViewGroup f9362e;

    public ViewTreeObserver$OnPreDrawListenerC0930A(ViewGroup viewGroup, x xVar) {
        this.f9361d = xVar;
        this.f9362e = viewGroup;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01d2 A[EDGE_INSN: B:141:0x01d2->B:88:0x01d2 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01f8  */
    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onPreDraw() {
        /*
            Method dump skipped, instructions count: 681
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: g0.ViewTreeObserver$OnPreDrawListenerC0930A.onPreDraw():boolean");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f9362e.getViewTreeObserver().removeOnPreDrawListener(this);
        this.f9362e.removeOnAttachStateChangeListener(this);
        C0931B.f9365c.remove(this.f9362e);
        ArrayList arrayList = (ArrayList) C0931B.b().get(this.f9362e);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((x) it.next()).B(this.f9362e);
            }
        }
        this.f9361d.j(true);
    }
}
