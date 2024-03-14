package com.android.systemui.animation;

import android.util.IntProperty;
import android.view.View;
/* loaded from: classes.dex */
public final class x extends IntProperty {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ViewHierarchyAnimator$Bound f6156a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(ViewHierarchyAnimator$Bound viewHierarchyAnimator$Bound, String str) {
        super(str);
        this.f6156a = viewHierarchyAnimator$Bound;
    }

    @Override // android.util.Property
    public final Integer get(Object obj) {
        View view = (View) obj;
        kotlin.jvm.internal.h.e(view, "view");
        z zVar = A.f6025a;
        Integer a4 = z.a(view, this.f6156a);
        return Integer.valueOf(a4 != null ? a4.intValue() : this.f6156a.d(view));
    }

    @Override // android.util.IntProperty
    public final void setValue(Object obj, int i4) {
        View view = (View) obj;
        kotlin.jvm.internal.h.e(view, "view");
        z zVar = A.f6025a;
        z.d(view, this.f6156a, i4);
    }
}
