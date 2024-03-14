package com.android.launcher3.icons;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class PlaceHolderIconDrawable extends FastBitmapDrawable {
    private final Path mProgressPath;

    public PlaceHolderIconDrawable(BitmapInfo bitmapInfo, Context context) {
        super(bitmapInfo.icon, bitmapInfo.color);
        this.mProgressPath = GraphicsUtils.getShapePath(100, context);
        this.mPaint.setColor(E.a.h(GraphicsUtils.getAttrColor(R.attr.loadingIconColor, context), bitmapInfo.color));
    }

    public final void animateIconUpdate(final Drawable drawable) {
        final int color = this.mPaint.getColor();
        ValueAnimator ofInt = ValueAnimator.ofInt(Color.alpha(color), 0);
        ofInt.setDuration(375L);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.icons.s
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                drawable.setColorFilter(new PorterDuffColorFilter(E.a.k(color, ((Integer) valueAnimator.getAnimatedValue()).intValue()), PorterDuff.Mode.SRC_ATOP));
            }
        });
        ofInt.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.icons.PlaceHolderIconDrawable.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                drawable.setColorFilter(null);
            }
        });
        ofInt.start();
    }

    @Override // com.android.launcher3.icons.FastBitmapDrawable
    public final void drawInternal(Canvas canvas, Rect rect) {
        int save = canvas.save();
        canvas.translate(rect.left, rect.top);
        canvas.scale(rect.width() / 100.0f, rect.height() / 100.0f);
        canvas.drawPath(this.mProgressPath, this.mPaint);
        canvas.restoreToCount(save);
    }
}
