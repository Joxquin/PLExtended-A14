package com.android.systemui.animation;

import android.view.View;
/* loaded from: classes.dex */
public final class u implements t {

    /* renamed from: d  reason: collision with root package name */
    public final View f6144d;

    /* renamed from: e  reason: collision with root package name */
    public final m3.l f6145e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f6146f;

    /* renamed from: g  reason: collision with root package name */
    public int f6147g;

    public u(View view, m3.l lVar) {
        kotlin.jvm.internal.h.e(view, "view");
        this.f6144d = view;
        this.f6145e = lVar;
        this.f6147g = view.getVisibility();
    }

    public final void i(int i4) {
        if (this.f6146f) {
            this.f6147g = i4;
        } else {
            this.f6145e.invoke(Integer.valueOf(i4));
        }
    }

    @Override // com.android.systemui.animation.t
    public final void setShouldBlockVisibilityChanges(boolean z4) {
        if (z4 == this.f6146f) {
            return;
        }
        this.f6146f = z4;
        if (z4) {
            this.f6147g = this.f6144d.getVisibility();
            return;
        }
        int i4 = this.f6147g;
        m3.l lVar = this.f6145e;
        if (i4 == 0) {
            lVar.invoke(4);
            lVar.invoke(0);
            return;
        }
        lVar.invoke(0);
        lVar.invoke(Integer.valueOf(this.f6147g));
    }
}
