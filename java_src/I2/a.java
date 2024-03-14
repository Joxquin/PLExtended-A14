package I2;

import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.material.transformation.ExpandableBehavior;
import v2.InterfaceC1438a;
/* loaded from: classes.dex */
public final class a implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ View f559d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ int f560e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ InterfaceC1438a f561f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ ExpandableBehavior f562g;

    public a(ExpandableBehavior expandableBehavior, View view, int i4, InterfaceC1438a interfaceC1438a) {
        this.f562g = expandableBehavior;
        this.f559d = view;
        this.f560e = i4;
        this.f561f = interfaceC1438a;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        this.f559d.getViewTreeObserver().removeOnPreDrawListener(this);
        ExpandableBehavior expandableBehavior = this.f562g;
        if (expandableBehavior.f8259a == this.f560e) {
            InterfaceC1438a interfaceC1438a = this.f561f;
            expandableBehavior.s((View) interfaceC1438a, this.f559d, interfaceC1438a.c(), false);
        }
        return false;
    }
}
