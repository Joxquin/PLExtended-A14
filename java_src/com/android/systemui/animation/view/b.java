package com.android.systemui.animation.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import com.android.systemui.animation.t;
import com.android.systemui.animation.u;
import e3.f;
import m3.l;
/* loaded from: classes.dex */
public class b extends TextView implements t {

    /* renamed from: d  reason: collision with root package name */
    public final u f6149d;

    public b(Context context) {
        super(context);
        this.f6149d = new u(this, new l() { // from class: com.android.systemui.animation.view.LaunchableTextView$delegate$1
            {
                super(1);
            }

            @Override // m3.l
            public final Object invoke(Object obj) {
                super/*android.widget.TextView*/.setVisibility(((Number) obj).intValue());
                return f.f9037a;
            }
        });
    }

    @Override // com.android.systemui.animation.t
    public final void setShouldBlockVisibilityChanges(boolean z4) {
        this.f6149d.setShouldBlockVisibilityChanges(z4);
    }

    @Override // android.view.View
    public final void setVisibility(int i4) {
        this.f6149d.i(i4);
    }

    public b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6149d = new u(this, new l() { // from class: com.android.systemui.animation.view.LaunchableTextView$delegate$1
            {
                super(1);
            }

            @Override // m3.l
            public final Object invoke(Object obj) {
                super/*android.widget.TextView*/.setVisibility(((Number) obj).intValue());
                return f.f9037a;
            }
        });
    }

    public b(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f6149d = new u(this, new l() { // from class: com.android.systemui.animation.view.LaunchableTextView$delegate$1
            {
                super(1);
            }

            @Override // m3.l
            public final Object invoke(Object obj) {
                super/*android.widget.TextView*/.setVisibility(((Number) obj).intValue());
                return f.f9037a;
            }
        });
    }
}
