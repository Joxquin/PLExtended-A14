package com.android.launcher3.graphics;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Picture;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.view.View;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.util.SafeCloseable;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class DragPreviewProvider {
    public final int blurSizeOutline;
    private final Rect mTempRect;
    protected final View mView;
    public final int previewPadding;

    public DragPreviewProvider(View view) {
        Context context = view.getContext();
        this.mTempRect = new Rect();
        this.mView = view;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.blur_size_medium_outline);
        this.blurSizeOutline = dimensionPixelSize;
        this.previewPadding = dimensionPixelSize;
    }

    public static void a(DragPreviewProvider dragPreviewProvider, float f4, Canvas canvas) {
        Rect rect = dragPreviewProvider.mTempRect;
        int save = canvas.save();
        canvas.scale(f4, f4);
        View view = dragPreviewProvider.mView;
        if (view instanceof DraggableView) {
            DraggableView draggableView = (DraggableView) view;
            SafeCloseable prepareDrawDragView = draggableView.prepareDrawDragView();
            try {
                draggableView.getSourceVisualDragBounds(rect);
                int i4 = dragPreviewProvider.blurSizeOutline;
                canvas.translate((i4 / 2) - rect.left, (i4 / 2) - rect.top);
                view.draw(canvas);
                if (prepareDrawDragView != null) {
                    prepareDrawDragView.close();
                }
            } catch (Throwable th) {
                if (prepareDrawDragView != null) {
                    try {
                        prepareDrawDragView.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        canvas.restoreToCount(save);
    }

    public static Rect getDrawableBounds(Drawable drawable) {
        Rect rect = new Rect();
        drawable.copyBounds(rect);
        if (rect.width() == 0 || rect.height() == 0) {
            rect.set(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        } else {
            rect.offsetTo(0, 0);
        }
        return rect;
    }

    public Drawable createDrawable() {
        int width;
        int height;
        View view = this.mView;
        if (view instanceof LauncherAppWidgetHostView) {
            return null;
        }
        float scaleX = view.getScaleX();
        if (view instanceof DraggableView) {
            Rect rect = this.mTempRect;
            ((DraggableView) view).getSourceVisualDragBounds(rect);
            width = rect.width();
            height = rect.height();
        } else {
            width = view.getWidth();
            height = view.getHeight();
        }
        boolean z4 = view instanceof BubbleTextView;
        int i4 = this.blurSizeOutline;
        if (z4 && ((BubbleTextView) view).getIconDisplay() == 9) {
            float f4 = (i4 / (width + i4)) / 2.0f;
            float f5 = (i4 / (height + i4)) / 2.0f;
            return new InsetDrawable(((FastBitmapDrawable.FastBitmapConstantState) ((BubbleTextView) view).getIcon().getConstantState()).newDrawable(), f4, f5, f4, f5);
        }
        GraphicsUtils.noteNewBitmapCreated();
        Picture picture = new Picture();
        a(this, scaleX, picture.beginRecording(width + i4, height + i4));
        picture.endRecording();
        return new FastBitmapDrawable(Bitmap.createBitmap(picture), 0);
    }

    public final View getContentView() {
        View view = this.mView;
        if (view instanceof LauncherAppWidgetHostView) {
            return view;
        }
        return null;
    }

    public float getScaleAndPosition(Drawable drawable, int[] iArr) {
        View view = this.mView;
        float locationInDragLayer = ((ActivityContext) ActivityContext.lookupContext(view.getContext())).getDragLayer().getLocationInDragLayer(view, iArr);
        if (view instanceof LauncherAppWidgetHostView) {
            locationInDragLayer /= ((LauncherAppWidgetHostView) view).getScaleToFit();
        }
        iArr[0] = Math.round(iArr[0] - ((drawable.getIntrinsicWidth() - (view.getScaleX() * (view.getWidth() * locationInDragLayer))) / 2.0f));
        iArr[1] = Math.round((iArr[1] - (((1.0f - locationInDragLayer) * drawable.getIntrinsicHeight()) / 2.0f)) - (this.previewPadding / 2));
        return locationInDragLayer;
    }

    public final float getScaleAndPosition(View view, int[] iArr) {
        View view2 = this.mView;
        float locationInDragLayer = ((ActivityContext) ActivityContext.lookupContext(view2.getContext())).getDragLayer().getLocationInDragLayer(view2, iArr);
        if (view2 instanceof LauncherAppWidgetHostView) {
            locationInDragLayer /= ((LauncherAppWidgetHostView) view2).getScaleToFit();
        }
        iArr[0] = Math.round(iArr[0] - ((view.getWidth() - (view2.getScaleX() * (view2.getWidth() * locationInDragLayer))) / 2.0f));
        iArr[1] = Math.round((iArr[1] - (((1.0f - locationInDragLayer) * view.getHeight()) / 2.0f)) - (this.previewPadding / 2));
        return locationInDragLayer;
    }
}
