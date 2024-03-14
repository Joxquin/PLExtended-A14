package com.android.wm.shell.common.bubbles;

import com.android.systemui.shared.R;
import v.C1429e;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final int f6324a = R.dimen.bubblebar_dismiss_target_size;

    /* renamed from: b  reason: collision with root package name */
    public final int f6325b = R.dimen.bubblebar_dismiss_target_icon_size;

    /* renamed from: c  reason: collision with root package name */
    public final int f6326c = R.dimen.bubblebar_dismiss_target_bottom_margin;

    /* renamed from: d  reason: collision with root package name */
    public final int f6327d = R.dimen.bubblebar_dismiss_floating_gradient_height;

    /* renamed from: e  reason: collision with root package name */
    public final int f6328e = 17170472;

    /* renamed from: f  reason: collision with root package name */
    public final int f6329f = R.drawable.bg_bubble_dismiss_circle;

    /* renamed from: g  reason: collision with root package name */
    public final int f6330g = R.drawable.ic_bubble_dismiss_white;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            return this.f6324a == fVar.f6324a && this.f6325b == fVar.f6325b && this.f6326c == fVar.f6326c && this.f6327d == fVar.f6327d && this.f6328e == fVar.f6328e && this.f6329f == fVar.f6329f && this.f6330g == fVar.f6330g;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = Integer.hashCode(this.f6325b);
        int hashCode2 = Integer.hashCode(this.f6326c);
        int hashCode3 = Integer.hashCode(this.f6327d);
        int hashCode4 = Integer.hashCode(this.f6328e);
        int hashCode5 = Integer.hashCode(this.f6329f);
        return Integer.hashCode(this.f6330g) + ((hashCode5 + ((hashCode4 + ((hashCode3 + ((hashCode2 + ((hashCode + (Integer.hashCode(this.f6324a) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Config(targetSizeResId=");
        sb.append(this.f6324a);
        sb.append(", iconSizeResId=");
        sb.append(this.f6325b);
        sb.append(", bottomMarginResId=");
        sb.append(this.f6326c);
        sb.append(", floatingGradientHeightResId=");
        sb.append(this.f6327d);
        sb.append(", floatingGradientColorResId=");
        sb.append(this.f6328e);
        sb.append(", backgroundResId=");
        sb.append(this.f6329f);
        sb.append(", iconResId=");
        return C1429e.a(sb, this.f6330g, ")");
    }
}
