package com.android.launcher3.util;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RenderNode;
/* loaded from: classes.dex */
public final class TranslateEdgeEffect extends EdgeEffectCompat {
    private final RenderNode mNode;

    public TranslateEdgeEffect(Context context) {
        super(context);
        this.mNode = new RenderNode("TranslateEdgeEffect");
    }

    @Override // android.widget.EdgeEffect
    public final boolean draw(Canvas canvas) {
        return false;
    }

    public final boolean getTranslationShift(float[] fArr) {
        boolean draw = super.draw(this.mNode.beginRecording(1, 1));
        this.mNode.endRecording();
        fArr[0] = getDistance();
        return draw;
    }
}
