package com.android.wm.shell.common.bubbles;

import android.graphics.drawable.GradientDrawable;
import android.util.IntProperty;
/* loaded from: classes.dex */
public final class g extends IntProperty {
    public g() {
        super("alpha");
    }

    @Override // android.util.Property
    public final Integer get(Object obj) {
        GradientDrawable d4 = (GradientDrawable) obj;
        kotlin.jvm.internal.h.e(d4, "d");
        return Integer.valueOf(d4.getAlpha());
    }

    @Override // android.util.IntProperty
    public final void setValue(Object obj, int i4) {
        GradientDrawable d4 = (GradientDrawable) obj;
        kotlin.jvm.internal.h.e(d4, "d");
        d4.setAlpha(i4);
    }
}
