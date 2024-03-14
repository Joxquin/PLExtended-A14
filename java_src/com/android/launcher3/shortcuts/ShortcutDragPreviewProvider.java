package com.android.launcher3.shortcuts;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Picture;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.android.launcher3.Utilities;
import com.android.launcher3.graphics.DragPreviewProvider;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.views.ActivityContext;
/* loaded from: classes.dex */
public final class ShortcutDragPreviewProvider extends DragPreviewProvider {
    private final Point mPositionShift;

    public ShortcutDragPreviewProvider(View view, Point point) {
        super(view);
        this.mPositionShift = point;
    }

    public static void b(ShortcutDragPreviewProvider shortcutDragPreviewProvider, int i4, Canvas canvas) {
        float f4 = i4;
        Drawable background = shortcutDragPreviewProvider.mView.getBackground();
        Rect drawableBounds = DragPreviewProvider.getDrawableBounds(background);
        float f5 = shortcutDragPreviewProvider.blurSizeOutline / 2;
        canvas.translate(f5, f5);
        canvas.scale(f4 / drawableBounds.width(), f4 / drawableBounds.height(), 0.0f, 0.0f);
        canvas.translate(drawableBounds.left, drawableBounds.top);
        background.draw(canvas);
    }

    @Override // com.android.launcher3.graphics.DragPreviewProvider
    public final Drawable createDrawable() {
        int i4 = ((ActivityContext) ActivityContext.lookupContext(this.mView.getContext())).getDeviceProfile().iconSizePx;
        int i5 = this.blurSizeOutline;
        GraphicsUtils.noteNewBitmapCreated();
        Picture picture = new Picture();
        b(this, i4, picture.beginRecording(i4 + i5, i5 + i4));
        picture.endRecording();
        return new FastBitmapDrawable(Bitmap.createBitmap(picture), 0);
    }

    @Override // com.android.launcher3.graphics.DragPreviewProvider
    public final float getScaleAndPosition(Drawable drawable, int[] iArr) {
        View view = this.mView;
        ActivityContext activityContext = (ActivityContext) ActivityContext.lookupContext(view.getContext());
        int width = DragPreviewProvider.getDrawableBounds(view.getBackground()).width();
        float locationInDragLayer = activityContext.getDragLayer().getLocationInDragLayer(view, iArr);
        int paddingStart = view.getPaddingStart();
        if (Utilities.isRtl(view.getResources())) {
            paddingStart = (view.getWidth() - width) - paddingStart;
        }
        int i4 = iArr[0];
        float f4 = width * locationInDragLayer;
        float intrinsicWidth = (f4 - drawable.getIntrinsicWidth()) / 2.0f;
        Point point = this.mPositionShift;
        iArr[0] = Math.round(intrinsicWidth + (paddingStart * locationInDragLayer) + point.x) + i4;
        iArr[1] = Math.round((((locationInDragLayer * view.getHeight()) - drawable.getIntrinsicHeight()) / 2.0f) + point.y) + iArr[1];
        return f4 / activityContext.getDeviceProfile().iconSizePx;
    }
}
