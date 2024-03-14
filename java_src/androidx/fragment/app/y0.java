package androidx.fragment.app;

import android.view.View;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class y0 implements View.OnAttachStateChangeListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ View f3539d;

    public y0(View view) {
        this.f3539d = view;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f3539d.removeOnAttachStateChangeListener(this);
        View view2 = this.f3539d;
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        androidx.core.view.B.c(view2);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
