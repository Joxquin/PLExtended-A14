package com.android.launcher3.anim;

import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.view.View;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class PropertyListBuilder {
    private final ArrayList mProperties = new ArrayList();

    public final void alpha() {
        this.mProperties.add(PropertyValuesHolder.ofFloat(View.ALPHA, 1.0f));
    }

    public final ObjectAnimator build(View view) {
        ArrayList arrayList = this.mProperties;
        return ObjectAnimator.ofPropertyValuesHolder(view, (PropertyValuesHolder[]) arrayList.toArray(new PropertyValuesHolder[arrayList.size()]));
    }

    public final void scale() {
        ArrayList arrayList = this.mProperties;
        arrayList.add(PropertyValuesHolder.ofFloat(View.SCALE_X, 1.0f));
        arrayList.add(PropertyValuesHolder.ofFloat(View.SCALE_Y, 1.0f));
    }
}
