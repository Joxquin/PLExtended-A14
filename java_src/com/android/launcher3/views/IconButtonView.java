package com.android.launcher3.views;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityEvent;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.util.MultiTranslateDelegate;
/* loaded from: classes.dex */
public class IconButtonView extends BubbleTextView {
    private static final int[] ATTRS = {16842754};
    private final MultiTranslateDelegate mTranslateDelegate;

    /* loaded from: classes.dex */
    final class IconDrawable extends FastBitmapDrawable {
        private final Drawable mFg;

        public IconDrawable(Bitmap bitmap, int i4, Drawable drawable) {
            super(bitmap, 0);
            this.mPaint.setColorFilter(new BlendModeColorFilter(i4, BlendMode.SRC_IN));
            this.mFg = drawable;
        }

        @Override // com.android.launcher3.icons.FastBitmapDrawable
        public final void drawInternal(Canvas canvas, Rect rect) {
            super.drawInternal(canvas, rect);
            this.mFg.draw(canvas);
        }

        @Override // com.android.launcher3.icons.FastBitmapDrawable, android.graphics.drawable.Drawable
        public final void onBoundsChange(Rect rect) {
            super.onBoundsChange(rect);
            this.mFg.setBounds(rect);
        }
    }

    public IconButtonView(Context context) {
        this(context, null);
    }

    @Override // com.android.launcher3.BubbleTextView, com.android.launcher3.Reorderable
    public final MultiTranslateDelegate getTranslateDelegate() {
        return this.mTranslateDelegate;
    }

    @Override // android.view.View
    public final void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.getText().add(getContentDescription());
    }

    public final void setForegroundTint(int i4) {
        FastBitmapDrawable icon = getIcon();
        if (icon instanceof IconDrawable) {
            ((IconDrawable) icon).mFg.setTint(i4);
        }
    }

    public final void setIconDrawable(Drawable drawable) {
        ColorStateList backgroundTintList = getBackgroundTintList();
        int defaultColor = backgroundTintList == null ? -1 : backgroundTintList.getDefaultColor();
        LauncherIcons obtain = LauncherIcons.obtain(getContext());
        try {
            setIcon(new IconDrawable(obtain.getWhiteShadowLayer(), defaultColor, drawable));
            obtain.recycle();
        } catch (Throwable th) {
            try {
                obtain.recycle();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final void setTranslationXForTaskbarAllAppsIcon(float f4) {
        this.mTranslateDelegate.getTranslationX(5).setValue(f4);
    }

    public IconButtonView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public IconButtonView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mTranslateDelegate = new MultiTranslateDelegate(6, this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ATTRS, i4, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        ColorStateList backgroundTintList = getBackgroundTintList();
        int defaultColor = backgroundTintList == null ? -1 : backgroundTintList.getDefaultColor();
        drawable = drawable == null ? new ColorDrawable(0) : drawable;
        LauncherIcons obtain = LauncherIcons.obtain(context);
        try {
            setIcon(new IconDrawable(obtain.getWhiteShadowLayer(), defaultColor, drawable));
            obtain.recycle();
        } catch (Throwable th) {
            try {
                obtain.recycle();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
