package com.android.quickstep.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
/* loaded from: classes.dex */
public class SplitPlaceholderView extends FrameLayout {
    private IconView mIconView;
    private final Paint mPaint;
    private final Rect mTempRect;

    public SplitPlaceholderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint(1);
        this.mPaint = paint;
        this.mTempRect = new Rect();
        paint.setColor(getThemeBackgroundColor(context));
        setWillNotDraw(false);
    }

    private void drawBackground(Canvas canvas) {
        ((FloatingTaskView) getParent()).drawRoundedRect(canvas, this.mPaint);
    }

    private static int getThemeBackgroundColor(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16842801, typedValue, true);
        return typedValue.data;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        drawBackground(canvas);
        super.dispatchDraw(canvas);
        if (this.mIconView != null) {
            getLocalVisibleRect(this.mTempRect);
            ((FloatingTaskView) getParent()).centerIconView(this.mIconView, this.mTempRect.centerX(), this.mTempRect.centerY());
        }
    }

    public IconView getIconView() {
        return this.mIconView;
    }

    public void setIcon(Drawable drawable, int i4) {
        if (this.mIconView == null) {
            IconView iconView = new IconView(getContext());
            this.mIconView = iconView;
            addView(iconView);
        }
        this.mIconView.setDrawable(drawable);
        this.mIconView.setDrawableSize(i4, i4);
        this.mIconView.setLayoutParams(new FrameLayout.LayoutParams(i4, i4));
    }
}
