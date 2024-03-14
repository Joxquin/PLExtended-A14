package com.android.systemui.animation.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.android.systemui.animation.t;
import com.android.systemui.animation.u;
import e3.f;
import m3.l;
/* loaded from: classes.dex */
public class a extends LinearLayout implements t {

    /* renamed from: d  reason: collision with root package name */
    public final u f6148d;

    public a(Context context) {
        super(context);
        this.f6148d = new u(this, new l() { // from class: com.android.systemui.animation.view.LaunchableLinearLayout$delegate$1
            {
                super(1);
            }

            @Override // m3.l
            public final Object invoke(Object obj) {
                super/*android.widget.LinearLayout*/.setVisibility(((Number) obj).intValue());
                return f.f9037a;
            }
        });
    }

    @Override // com.android.systemui.animation.t
    public final void setShouldBlockVisibilityChanges(boolean z4) {
        this.f6148d.setShouldBlockVisibilityChanges(z4);
    }

    @Override // android.view.View
    public final void setVisibility(int i4) {
        this.f6148d.i(i4);
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6148d = new u(this, new l() { // from class: com.android.systemui.animation.view.LaunchableLinearLayout$delegate$1
            {
                super(1);
            }

            @Override // m3.l
            public final Object invoke(Object obj) {
                super/*android.widget.LinearLayout*/.setVisibility(((Number) obj).intValue());
                return f.f9037a;
            }
        });
    }

    public a(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f6148d = new u(this, new l() { // from class: com.android.systemui.animation.view.LaunchableLinearLayout$delegate$1
            {
                super(1);
            }

            @Override // m3.l
            public final Object invoke(Object obj) {
                super/*android.widget.LinearLayout*/.setVisibility(((Number) obj).intValue());
                return f.f9037a;
            }
        });
    }

    public a(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        this.f6148d = new u(this, new l() { // from class: com.android.systemui.animation.view.LaunchableLinearLayout$delegate$1
            {
                super(1);
            }

            @Override // m3.l
            public final Object invoke(Object obj) {
                super/*android.widget.LinearLayout*/.setVisibility(((Number) obj).intValue());
                return f.f9037a;
            }
        });
    }
}
