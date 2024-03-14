package com.android.launcher3;

import com.android.launcher3.util.MultiTranslateDelegate;
/* loaded from: classes.dex */
public interface Reorderable {
    float getReorderBounceScale();

    MultiTranslateDelegate getTranslateDelegate();

    void setReorderBounceScale(float f4);
}
