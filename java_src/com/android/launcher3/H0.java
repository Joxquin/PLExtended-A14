package com.android.launcher3;

import android.util.FloatProperty;
import android.view.View;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class H0 implements Consumer {
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        View view = (View) obj;
        LauncherAnimUtils.SCALE_PROPERTY.set((FloatProperty) view, Float.valueOf(1.0f));
        view.setLayerType(0, null);
    }
}
