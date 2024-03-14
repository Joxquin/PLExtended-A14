package com.google.android.apps.nexuslauncher;

import android.view.View;
/* loaded from: classes.dex */
public final class RingAppearAnimation$ViewWithPivot {

    /* renamed from: a  reason: collision with root package name */
    public final View f6484a;

    /* renamed from: b  reason: collision with root package name */
    public final float f6485b;

    /* renamed from: c  reason: collision with root package name */
    public final float f6486c;

    public RingAppearAnimation$ViewWithPivot(View view, float f4, float f5) {
        kotlin.jvm.internal.h.e(view, "view");
        this.f6484a = view;
        this.f6485b = f4;
        this.f6486c = f5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RingAppearAnimation$ViewWithPivot) {
            RingAppearAnimation$ViewWithPivot ringAppearAnimation$ViewWithPivot = (RingAppearAnimation$ViewWithPivot) obj;
            return kotlin.jvm.internal.h.a(this.f6484a, ringAppearAnimation$ViewWithPivot.f6484a) && Float.compare(this.f6485b, ringAppearAnimation$ViewWithPivot.f6485b) == 0 && Float.compare(this.f6486c, ringAppearAnimation$ViewWithPivot.f6486c) == 0;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = Float.hashCode(this.f6485b);
        return Float.hashCode(this.f6486c) + ((hashCode + (this.f6484a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "ViewWithPivot(view=" + this.f6484a + ", pivotX=" + this.f6485b + ", pivotY=" + this.f6486c + ")";
    }
}
