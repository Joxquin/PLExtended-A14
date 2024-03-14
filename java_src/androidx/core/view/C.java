package androidx.core.view;

import android.view.View;
import android.view.WindowInsets;
/* loaded from: classes.dex */
public final class C implements View.OnApplyWindowInsetsListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ r f3078d;

    public C(View view, r rVar) {
        this.f3078d = rVar;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        return this.f3078d.b(view, c0.g(windowInsets, view)).f();
    }
}
