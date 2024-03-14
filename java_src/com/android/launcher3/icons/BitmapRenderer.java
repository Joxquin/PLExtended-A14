package com.android.launcher3.icons;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Picture;
/* loaded from: classes.dex */
public interface BitmapRenderer {
    static Bitmap createHardwareBitmap(int i4, int i5, BitmapRenderer bitmapRenderer) {
        d dVar = GraphicsUtils.sOnNewBitmapRunnable;
        Picture picture = new Picture();
        bitmapRenderer.draw(picture.beginRecording(i4, i5));
        picture.endRecording();
        return Bitmap.createBitmap(picture);
    }

    void draw(Canvas canvas);
}
