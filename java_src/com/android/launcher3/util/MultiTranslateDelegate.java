package com.android.launcher3.util;

import android.view.View;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.util.MultiPropertyFactory;
/* loaded from: classes.dex */
public final class MultiTranslateDelegate {
    private final MultiPropertyFactory mTranslationX;
    private final MultiPropertyFactory mTranslationY;

    public MultiTranslateDelegate(int i4, View view) {
        this.mTranslationX = new MultiPropertyFactory(view, LauncherAnimUtils.VIEW_TRANSLATE_X, i4, new MultiPropertyFactory.FloatBiFunction() { // from class: com.android.launcher3.util.x
            @Override // com.android.launcher3.util.MultiPropertyFactory.FloatBiFunction
            public final float apply(float f4, float f5) {
                switch (r1) {
                    case 0:
                        return Float.sum(f4, f5);
                    default:
                        return Float.sum(f4, f5);
                }
            }
        });
        this.mTranslationY = new MultiPropertyFactory(view, LauncherAnimUtils.VIEW_TRANSLATE_Y, 5, new MultiPropertyFactory.FloatBiFunction() { // from class: com.android.launcher3.util.x
            @Override // com.android.launcher3.util.MultiPropertyFactory.FloatBiFunction
            public final float apply(float f4, float f5) {
                switch (r1) {
                    case 0:
                        return Float.sum(f4, f5);
                    default:
                        return Float.sum(f4, f5);
                }
            }
        });
    }

    public final MultiPropertyFactory.MultiProperty getTranslationX(int i4) {
        return this.mTranslationX.get(i4);
    }

    public final MultiPropertyFactory.MultiProperty getTranslationY(int i4) {
        return this.mTranslationY.get(i4);
    }

    public final void setTranslation(float f4, float f5, int i4) {
        getTranslationX(i4).setValue(f4);
        getTranslationY(i4).setValue(f5);
    }
}
