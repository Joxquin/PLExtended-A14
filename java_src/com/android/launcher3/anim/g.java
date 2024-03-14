package com.android.launcher3.anim;

import com.android.launcher3.anim.AnimatorPlaybackController;
/* loaded from: classes.dex */
public final /* synthetic */ class g implements AnimatorPlaybackController.ProgressMapper {
    @Override // com.android.launcher3.anim.AnimatorPlaybackController.ProgressMapper
    public final float getProgress(float f4, float f5) {
        if (f4 > f5) {
            return 1.0f;
        }
        return f4 / f5;
    }
}
