package com.android.launcher3.icons;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.Drawable;
/* loaded from: classes.dex */
public final class BubbleIconFactory extends BaseIconFactory {
    private final BaseIconFactory mBadgeFactory;
    private final int mRingColor;
    private final int mRingWidth;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class CircularAdaptiveIcon extends AdaptiveIconDrawable {
        final Path mPath;

        public CircularAdaptiveIcon(Drawable drawable, Drawable drawable2) {
            super(drawable, drawable2);
            this.mPath = new Path();
        }

        @Override // android.graphics.drawable.AdaptiveIconDrawable, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            int save = canvas.save();
            canvas.clipPath(getIconMask());
            Drawable background = getBackground();
            if (background != null) {
                background.draw(canvas);
            }
            Drawable foreground = getForeground();
            if (foreground != null) {
                foreground.draw(canvas);
            }
            canvas.restoreToCount(save);
        }

        @Override // android.graphics.drawable.AdaptiveIconDrawable
        public final Path getIconMask() {
            this.mPath.reset();
            Rect bounds = getBounds();
            this.mPath.addOval(bounds.left, bounds.top, bounds.right, bounds.bottom, Path.Direction.CW);
            return this.mPath;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class CircularRingDrawable extends CircularAdaptiveIcon {
        final Drawable mDr;
        final Rect mInnerBounds;

        public CircularRingDrawable(Drawable drawable) {
            super(null, null);
            this.mInnerBounds = new Rect();
            this.mDr = drawable;
        }

        @Override // com.android.launcher3.icons.BubbleIconFactory.CircularAdaptiveIcon, android.graphics.drawable.AdaptiveIconDrawable, android.graphics.drawable.Drawable
        public final void draw(Canvas canvas) {
            int save = canvas.save();
            canvas.clipPath(getIconMask());
            canvas.drawColor(BubbleIconFactory.this.mRingColor);
            this.mInnerBounds.set(getBounds());
            this.mInnerBounds.inset(BubbleIconFactory.this.mRingWidth, BubbleIconFactory.this.mRingWidth);
            Rect rect = this.mInnerBounds;
            canvas.translate(rect.left, rect.top);
            this.mDr.setBounds(0, 0, this.mInnerBounds.width(), this.mInnerBounds.height());
            this.mDr.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    public BubbleIconFactory(Context context, int i4, int i5, int i6, int i7) {
        super(context, context.getResources().getConfiguration().densityDpi, i4, false);
        this.mRingColor = i6;
        this.mRingWidth = i7;
        this.mBadgeFactory = new BaseIconFactory(context, context.getResources().getConfiguration().densityDpi, i5, false);
    }

    public final BitmapInfo getBadgeBitmap(Drawable drawable, boolean z4) {
        if (drawable instanceof AdaptiveIconDrawable) {
            AdaptiveIconDrawable adaptiveIconDrawable = (AdaptiveIconDrawable) drawable;
            drawable = new CircularAdaptiveIcon(adaptiveIconDrawable.getBackground(), adaptiveIconDrawable.getForeground());
        }
        if (z4) {
            drawable = new CircularRingDrawable(drawable);
        }
        return this.mBadgeFactory.createIconBitmap(this.mBadgeFactory.createIconBitmap(drawable, 1.0f, 2));
    }
}
