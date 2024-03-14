package com.android.launcher3.pageindicators;

import Q0.b;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewConfiguration;
import com.android.launcher3.Insettable;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import com.android.launcher3.pageindicators.WorkspacePageIndicator;
import com.android.launcher3.util.Themes;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class WorkspacePageIndicator extends View implements Insettable, PageIndicator {
    private int mActiveAlpha;
    private ValueAnimator[] mAnimators;
    private int mCurrentScroll;
    private final Handler mDelayedLineFadeHandler;
    private b mHideLineRunnable;
    private final int mLineHeight;
    private Paint mLinePaint;
    private float mNumPagesFloat;
    private boolean mShouldAutoHide;
    private int mToAlpha;
    private int mTotalScroll;
    private static final int LINE_ANIMATE_DURATION = ViewConfiguration.getScrollBarFadeDuration();
    private static final int LINE_FADE_DELAY = ViewConfiguration.getScrollDefaultDelay();
    private static final Property PAINT_ALPHA = new Property(Integer.class, "paint_alpha") { // from class: com.android.launcher3.pageindicators.WorkspacePageIndicator.1
        public final Integer a(WorkspacePageIndicator workspacePageIndicator) {
            switch (r3) {
                case 0:
                    return Integer.valueOf(workspacePageIndicator.mLinePaint.getAlpha());
                default:
                    return Integer.valueOf(workspacePageIndicator.mTotalScroll);
            }
        }

        public final void b(WorkspacePageIndicator workspacePageIndicator, Integer num) {
            switch (r3) {
                case 0:
                    workspacePageIndicator.mLinePaint.setAlpha(num.intValue());
                    workspacePageIndicator.invalidate();
                    return;
                default:
                    workspacePageIndicator.mTotalScroll = num.intValue();
                    workspacePageIndicator.invalidate();
                    return;
            }
        }

        @Override // android.util.Property
        public final Object get(Object obj) {
            switch (r3) {
                case 0:
                    return a((WorkspacePageIndicator) obj);
                case 1:
                    return Float.valueOf(((WorkspacePageIndicator) obj).mNumPagesFloat);
                default:
                    return a((WorkspacePageIndicator) obj);
            }
        }

        @Override // android.util.Property
        public final void set(Object obj, Object obj2) {
            switch (r3) {
                case 0:
                    b((WorkspacePageIndicator) obj, (Integer) obj2);
                    return;
                case 1:
                    WorkspacePageIndicator workspacePageIndicator = (WorkspacePageIndicator) obj;
                    workspacePageIndicator.mNumPagesFloat = ((Float) obj2).floatValue();
                    workspacePageIndicator.invalidate();
                    return;
                default:
                    b((WorkspacePageIndicator) obj, (Integer) obj2);
                    return;
            }
        }
    };
    private static final Property NUM_PAGES = new Property(Float.class, "num_pages") { // from class: com.android.launcher3.pageindicators.WorkspacePageIndicator.1
        public final Integer a(WorkspacePageIndicator workspacePageIndicator) {
            switch (r3) {
                case 0:
                    return Integer.valueOf(workspacePageIndicator.mLinePaint.getAlpha());
                default:
                    return Integer.valueOf(workspacePageIndicator.mTotalScroll);
            }
        }

        public final void b(WorkspacePageIndicator workspacePageIndicator, Integer num) {
            switch (r3) {
                case 0:
                    workspacePageIndicator.mLinePaint.setAlpha(num.intValue());
                    workspacePageIndicator.invalidate();
                    return;
                default:
                    workspacePageIndicator.mTotalScroll = num.intValue();
                    workspacePageIndicator.invalidate();
                    return;
            }
        }

        @Override // android.util.Property
        public final Object get(Object obj) {
            switch (r3) {
                case 0:
                    return a((WorkspacePageIndicator) obj);
                case 1:
                    return Float.valueOf(((WorkspacePageIndicator) obj).mNumPagesFloat);
                default:
                    return a((WorkspacePageIndicator) obj);
            }
        }

        @Override // android.util.Property
        public final void set(Object obj, Object obj2) {
            switch (r3) {
                case 0:
                    b((WorkspacePageIndicator) obj, (Integer) obj2);
                    return;
                case 1:
                    WorkspacePageIndicator workspacePageIndicator = (WorkspacePageIndicator) obj;
                    workspacePageIndicator.mNumPagesFloat = ((Float) obj2).floatValue();
                    workspacePageIndicator.invalidate();
                    return;
                default:
                    b((WorkspacePageIndicator) obj, (Integer) obj2);
                    return;
            }
        }
    };
    private static final Property TOTAL_SCROLL = new Property(Integer.class, "total_scroll") { // from class: com.android.launcher3.pageindicators.WorkspacePageIndicator.1
        public final Integer a(WorkspacePageIndicator workspacePageIndicator) {
            switch (r3) {
                case 0:
                    return Integer.valueOf(workspacePageIndicator.mLinePaint.getAlpha());
                default:
                    return Integer.valueOf(workspacePageIndicator.mTotalScroll);
            }
        }

        public final void b(WorkspacePageIndicator workspacePageIndicator, Integer num) {
            switch (r3) {
                case 0:
                    workspacePageIndicator.mLinePaint.setAlpha(num.intValue());
                    workspacePageIndicator.invalidate();
                    return;
                default:
                    workspacePageIndicator.mTotalScroll = num.intValue();
                    workspacePageIndicator.invalidate();
                    return;
            }
        }

        @Override // android.util.Property
        public final Object get(Object obj) {
            switch (r3) {
                case 0:
                    return a((WorkspacePageIndicator) obj);
                case 1:
                    return Float.valueOf(((WorkspacePageIndicator) obj).mNumPagesFloat);
                default:
                    return a((WorkspacePageIndicator) obj);
            }
        }

        @Override // android.util.Property
        public final void set(Object obj, Object obj2) {
            switch (r3) {
                case 0:
                    b((WorkspacePageIndicator) obj, (Integer) obj2);
                    return;
                case 1:
                    WorkspacePageIndicator workspacePageIndicator = (WorkspacePageIndicator) obj;
                    workspacePageIndicator.mNumPagesFloat = ((Float) obj2).floatValue();
                    workspacePageIndicator.invalidate();
                    return;
                default:
                    b((WorkspacePageIndicator) obj, (Integer) obj2);
                    return;
            }
        }
    };

    public WorkspacePageIndicator(Context context) {
        this(context, null);
    }

    public static void a(WorkspacePageIndicator workspacePageIndicator) {
        if (workspacePageIndicator.mToAlpha == 0) {
            return;
        }
        workspacePageIndicator.mToAlpha = 0;
        workspacePageIndicator.setupAndRunAnimation(ObjectAnimator.ofInt(workspacePageIndicator, PAINT_ALPHA, 0), 0);
    }

    private void setupAndRunAnimation(ValueAnimator valueAnimator, final int i4) {
        ValueAnimator valueAnimator2 = this.mAnimators[i4];
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        this.mAnimators[i4] = valueAnimator;
        valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.pageindicators.WorkspacePageIndicator.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                WorkspacePageIndicator.this.mAnimators[i4] = null;
            }
        });
        this.mAnimators[i4].setDuration(LINE_ANIMATE_DURATION);
        this.mAnimators[i4].start();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i4 = this.mTotalScroll;
        if (i4 == 0 || this.mNumPagesFloat == 0.0f) {
            return;
        }
        float boundToRange = Utilities.boundToRange(this.mCurrentScroll / i4, 0.0f, 1.0f);
        int width = getWidth();
        int i5 = (int) (width / this.mNumPagesFloat);
        int i6 = (int) (boundToRange * (width - i5));
        int i7 = this.mLineHeight;
        canvas.drawRoundRect(i6, (getHeight() / 2) - (this.mLineHeight / 2), i5 + i6, (i7 / 2) + (getHeight() / 2), i7, i7, this.mLinePaint);
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public final void pauseAnimations() {
        for (int i4 = 0; i4 < 3; i4++) {
            ValueAnimator valueAnimator = this.mAnimators[i4];
            if (valueAnimator != null) {
                valueAnimator.pause();
            }
        }
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public final void setActiveMarker(int i4) {
    }

    @Override // com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public final void setMarkersCount(int i4) {
        float f4 = i4;
        if (Float.compare(f4, this.mNumPagesFloat) != 0) {
            setupAndRunAnimation(ObjectAnimator.ofFloat(this, NUM_PAGES, f4), 1);
            return;
        }
        ValueAnimator valueAnimator = this.mAnimators[1];
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.mAnimators[1] = null;
        }
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public final void setScroll(int i4, int i5) {
        if (getAlpha() == 0.0f) {
            return;
        }
        int i6 = this.mActiveAlpha;
        if (i6 != this.mToAlpha) {
            this.mToAlpha = i6;
            setupAndRunAnimation(ObjectAnimator.ofInt(this, PAINT_ALPHA, i6), 0);
        }
        this.mCurrentScroll = i4;
        int i7 = this.mTotalScroll;
        if (i7 == 0) {
            this.mTotalScroll = i5;
        } else if (i7 != i5) {
            setupAndRunAnimation(ObjectAnimator.ofInt(this, TOTAL_SCROLL, i5), 2);
        } else {
            invalidate();
        }
        if (this.mShouldAutoHide) {
            this.mDelayedLineFadeHandler.removeCallbacksAndMessages(null);
            this.mDelayedLineFadeHandler.postDelayed(this.mHideLineRunnable, LINE_FADE_DELAY);
        }
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public final void setShouldAutoHide(boolean z4) {
        this.mShouldAutoHide = z4;
        if (z4 && this.mLinePaint.getAlpha() > 0) {
            this.mDelayedLineFadeHandler.removeCallbacksAndMessages(null);
            this.mDelayedLineFadeHandler.postDelayed(this.mHideLineRunnable, LINE_FADE_DELAY);
        } else if (z4) {
        } else {
            this.mDelayedLineFadeHandler.removeCallbacksAndMessages(null);
        }
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public final void skipAnimationsToEnd() {
        for (int i4 = 0; i4 < 3; i4++) {
            ValueAnimator valueAnimator = this.mAnimators[i4];
            if (valueAnimator != null) {
                valueAnimator.end();
            }
        }
    }

    public WorkspacePageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [Q0.b] */
    public WorkspacePageIndicator(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mAnimators = new ValueAnimator[3];
        this.mDelayedLineFadeHandler = new Handler(Looper.getMainLooper());
        this.mShouldAutoHide = true;
        this.mActiveAlpha = 0;
        this.mHideLineRunnable = new Runnable() { // from class: Q0.b
            @Override // java.lang.Runnable
            public final void run() {
                WorkspacePageIndicator.a(WorkspacePageIndicator.this);
            }
        };
        Resources resources = context.getResources();
        Paint paint = new Paint();
        this.mLinePaint = paint;
        paint.setAlpha(0);
        Launcher launcher = Launcher.getLauncher(context);
        this.mLineHeight = resources.getDimensionPixelSize(R.dimen.workspace_page_indicator_line_height);
        boolean attrBoolean = Themes.getAttrBoolean(R.attr.isWorkspaceDarkText, launcher);
        this.mActiveAlpha = attrBoolean ? 165 : 178;
        this.mLinePaint.setColor(attrBoolean ? -16777216 : -1);
    }
}
