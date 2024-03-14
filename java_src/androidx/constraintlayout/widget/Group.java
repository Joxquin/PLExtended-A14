package androidx.constraintlayout.widget;

import android.content.Context;
import android.util.AttributeSet;
/* loaded from: classes.dex */
public class Group extends b {
    public Group(Context context) {
        super(context);
    }

    @Override // androidx.constraintlayout.widget.b
    public final void f(ConstraintLayout constraintLayout) {
        e(constraintLayout);
    }

    @Override // androidx.constraintlayout.widget.b
    public final void h(AttributeSet attributeSet) {
        super.h(attributeSet);
    }

    @Override // androidx.constraintlayout.widget.b
    public final void m() {
        d dVar = (d) getLayoutParams();
        dVar.f2852q0.O(0);
        dVar.f2852q0.L(0);
    }

    @Override // androidx.constraintlayout.widget.b, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        d();
    }

    @Override // android.view.View
    public final void setElevation(float f4) {
        super.setElevation(f4);
        d();
    }

    @Override // android.view.View
    public final void setVisibility(int i4) {
        super.setVisibility(i4);
        d();
    }

    public Group(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Group(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
