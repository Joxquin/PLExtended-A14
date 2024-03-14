package com.android.quickstep.views;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
/* loaded from: classes.dex */
public class LaunchableConstraintLayout extends ConstraintLayout implements com.android.systemui.animation.t {
    private final com.android.systemui.animation.u delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LaunchableConstraintLayout(Context context) {
        super(context);
        kotlin.jvm.internal.h.e(context, "context");
        this.delegate = new com.android.systemui.animation.u(this, new m3.l() { // from class: com.android.quickstep.views.LaunchableConstraintLayout$delegate$1
            {
                super(1);
            }

            @Override // m3.l
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke(((Number) obj).intValue());
                return e3.f.f9037a;
            }

            public final void invoke(int i4) {
                super/*android.view.ViewGroup*/.setVisibility(i4);
            }
        });
    }

    @Override // com.android.systemui.animation.t
    public void setShouldBlockVisibilityChanges(boolean z4) {
        this.delegate.setShouldBlockVisibilityChanges(z4);
    }

    @Override // android.view.View
    public void setVisibility(int i4) {
        this.delegate.i(i4);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LaunchableConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        kotlin.jvm.internal.h.e(context, "context");
        this.delegate = new com.android.systemui.animation.u(this, new m3.l() { // from class: com.android.quickstep.views.LaunchableConstraintLayout$delegate$1
            {
                super(1);
            }

            @Override // m3.l
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke(((Number) obj).intValue());
                return e3.f.f9037a;
            }

            public final void invoke(int i4) {
                super/*android.view.ViewGroup*/.setVisibility(i4);
            }
        });
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LaunchableConstraintLayout(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        kotlin.jvm.internal.h.e(context, "context");
        this.delegate = new com.android.systemui.animation.u(this, new m3.l() { // from class: com.android.quickstep.views.LaunchableConstraintLayout$delegate$1
            {
                super(1);
            }

            @Override // m3.l
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke(((Number) obj).intValue());
                return e3.f.f9037a;
            }

            public final void invoke(int i42) {
                super/*android.view.ViewGroup*/.setVisibility(i42);
            }
        });
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LaunchableConstraintLayout(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        kotlin.jvm.internal.h.e(context, "context");
        this.delegate = new com.android.systemui.animation.u(this, new m3.l() { // from class: com.android.quickstep.views.LaunchableConstraintLayout$delegate$1
            {
                super(1);
            }

            @Override // m3.l
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke(((Number) obj).intValue());
                return e3.f.f9037a;
            }

            public final void invoke(int i42) {
                super/*android.view.ViewGroup*/.setVisibility(i42);
            }
        });
    }
}
