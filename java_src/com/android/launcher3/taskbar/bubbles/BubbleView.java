package com.android.launcher3.taskbar.bubbles;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.launcher3.icons.DotRenderer;
import com.android.launcher3.icons.IconNormalizer;
import com.android.launcher3.taskbar.bubbles.BubbleView;
import com.android.systemui.shared.R;
import java.util.EnumSet;
/* loaded from: classes.dex */
public class BubbleView extends ConstraintLayout {
    private float mAnimatingToDotScale;
    private final ImageView mAppIcon;
    private BubbleBarItem mBubble;
    private final ImageView mBubbleIcon;
    private final int mBubbleSize;
    private int mDotColor;
    private boolean mDotIsAnimating;
    private DotRenderer mDotRenderer;
    private float mDotScale;
    private DotRenderer.DrawParams mDrawParams;
    private final EnumSet mSuppressionFlags;
    private Rect mTempBounds;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum SuppressionFlag {
        /* JADX INFO: Fake field, exist only in values array */
        FLYOUT_VISIBLE,
        BEHIND_STACK
    }

    public BubbleView(Context context) {
        this(context, null);
    }

    public static void r(BubbleView bubbleView, boolean z4, ValueAnimator valueAnimator) {
        bubbleView.getClass();
        float animatedFraction = valueAnimator.getAnimatedFraction();
        if (!z4) {
            animatedFraction = 1.0f - animatedFraction;
        }
        bubbleView.mDotScale = animatedFraction;
        bubbleView.invalidate();
    }

    public static void s(BubbleView bubbleView, boolean z4) {
        bubbleView.getClass();
        bubbleView.mDotScale = z4 ? 1.0f : 0.0f;
        bubbleView.invalidate();
        bubbleView.mDotIsAnimating = false;
    }

    private boolean shouldDrawDot() {
        boolean z4;
        BubbleBarItem bubbleBarItem = this.mBubble;
        if (bubbleBarItem != null && (bubbleBarItem instanceof BubbleBarBubble) && this.mSuppressionFlags.isEmpty()) {
            if (!((((BubbleBarBubble) this.mBubble).getInfo().f6314e & 2) != 0)) {
                z4 = true;
                return z4 || this.mDotIsAnimating;
            }
        }
        z4 = false;
        if (z4) {
            return true;
        }
    }

    public static void t(BubbleView bubbleView, Outline outline) {
        int normalizedCircleSize = IconNormalizer.getNormalizedCircleSize(bubbleView.mBubbleSize);
        int i4 = (bubbleView.mBubbleSize - normalizedCircleSize) / 2;
        int i5 = normalizedCircleSize + i4;
        outline.setOval(i4, i4, i5, i5);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (shouldDrawDot()) {
            getDrawingRect(this.mTempBounds);
            DotRenderer.DrawParams drawParams = this.mDrawParams;
            drawParams.dotColor = this.mDotColor;
            drawParams.iconBounds = this.mTempBounds;
            drawParams.scale = this.mDotScale;
            this.mDotRenderer.draw(canvas, drawParams);
        }
    }

    public final BubbleBarItem getBubble() {
        return this.mBubble;
    }

    public final void setBehindStack(boolean z4, boolean z5) {
        SuppressionFlag suppressionFlag = SuppressionFlag.BEHIND_STACK;
        if (z4) {
            this.mSuppressionFlags.add(suppressionFlag);
        } else {
            this.mSuppressionFlags.remove(suppressionFlag);
        }
        updateDotVisibility(z5);
        BubbleBarItem bubbleBarItem = this.mBubble;
        if (bubbleBarItem instanceof BubbleBarOverflow) {
            return;
        }
        ((BubbleBarBubble) bubbleBarItem).getBadge();
        this.mAppIcon.setTranslationX(0);
        this.mAppIcon.setVisibility(this.mSuppressionFlags.contains(suppressionFlag) ? 8 : 0);
    }

    public final void setBubble(BubbleBarBubble bubbleBarBubble) {
        this.mBubble = bubbleBarBubble;
        this.mBubbleIcon.setImageBitmap(bubbleBarBubble.getIcon());
        this.mAppIcon.setImageBitmap(bubbleBarBubble.getBadge());
        this.mDotColor = bubbleBarBubble.getDotColor();
        this.mDotRenderer = new DotRenderer(this.mBubbleSize, bubbleBarBubble.getDotPath());
    }

    public final void setOverflow(BubbleBarOverflow bubbleBarOverflow, Bitmap bitmap) {
        this.mBubble = bubbleBarOverflow;
        this.mBubbleIcon.setImageBitmap(bitmap);
        this.mAppIcon.setVisibility(8);
    }

    @Override // android.view.View
    public final String toString() {
        BubbleBarItem bubbleBarItem = this.mBubble;
        return E.c.a("BubbleView{", bubbleBarItem != null ? bubbleBarItem.getKey() : "null", "}");
    }

    public final void updateDotVisibility(boolean z4) {
        float f4 = shouldDrawDot() ? 1.0f : 0.0f;
        if (!z4) {
            this.mDotScale = f4;
            this.mAnimatingToDotScale = f4;
            invalidate();
            return;
        }
        float f5 = shouldDrawDot() ? 1.0f : 0.0f;
        this.mDotIsAnimating = true;
        if (this.mAnimatingToDotScale == f5 || !shouldDrawDot()) {
            this.mDotIsAnimating = false;
            return;
        }
        this.mAnimatingToDotScale = f5;
        final boolean z5 = f5 > 0.0f;
        clearAnimation();
        animate().setDuration(200L).setInterpolator(com.android.wm.shell.animation.a.f6258c).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: Z0.o
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                BubbleView.r(BubbleView.this, z5, valueAnimator);
            }
        }).withEndAction(new Runnable() { // from class: Z0.p
            @Override // java.lang.Runnable
            public final void run() {
                BubbleView.s(BubbleView.this, z5);
            }
        }).start();
    }

    public BubbleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BubbleView(Context context, AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, 0);
    }

    public BubbleView(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        this.mSuppressionFlags = EnumSet.noneOf(SuppressionFlag.class);
        this.mTempBounds = new Rect();
        setLayoutDirection(0);
        LayoutInflater.from(context).inflate(R.layout.bubble_view, this);
        this.mBubbleSize = getResources().getDimensionPixelSize(R.dimen.bubblebar_icon_size);
        this.mBubbleIcon = (ImageView) findViewById(R.id.icon_view);
        this.mAppIcon = (ImageView) findViewById(R.id.app_icon_view);
        this.mDrawParams = new DotRenderer.DrawParams();
        setFocusable(true);
        setClickable(true);
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.android.launcher3.taskbar.bubbles.BubbleView.1
            @Override // android.view.ViewOutlineProvider
            public final void getOutline(View view, Outline outline) {
                BubbleView.t(BubbleView.this, outline);
            }
        });
    }
}
