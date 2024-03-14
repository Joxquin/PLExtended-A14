package com.android.systemui.animation;

import android.view.animation.Interpolator;
/* loaded from: classes.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public final Interpolator f6087a;

    /* renamed from: b  reason: collision with root package name */
    public final Interpolator f6088b;

    /* renamed from: c  reason: collision with root package name */
    public final Interpolator f6089c;

    /* renamed from: d  reason: collision with root package name */
    public final Interpolator f6090d;

    public m(Interpolator interpolator, Interpolator interpolator2, Interpolator interpolator3, Interpolator interpolator4) {
        this.f6087a = interpolator;
        this.f6088b = interpolator2;
        this.f6089c = interpolator3;
        this.f6090d = interpolator4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof m) {
            m mVar = (m) obj;
            return kotlin.jvm.internal.h.a(this.f6087a, mVar.f6087a) && kotlin.jvm.internal.h.a(this.f6088b, mVar.f6088b) && kotlin.jvm.internal.h.a(this.f6089c, mVar.f6089c) && kotlin.jvm.internal.h.a(this.f6090d, mVar.f6090d);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f6088b.hashCode();
        int hashCode2 = this.f6089c.hashCode();
        return this.f6090d.hashCode() + ((hashCode2 + ((hashCode + (this.f6087a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Interpolators(positionInterpolator=" + this.f6087a + ", positionXInterpolator=" + this.f6088b + ", contentBeforeFadeOutInterpolator=" + this.f6089c + ", contentAfterFadeInInterpolator=" + this.f6090d + ")";
    }
}
