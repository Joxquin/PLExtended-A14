package com.android.launcher3.views;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Insets;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.WindowInsets;
import android.widget.TextView;
import androidx.recyclerview.widget.AbstractC0290q0;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.FastScrollRecyclerView;
import com.android.launcher3.R$styleable;
import com.android.launcher3.Utilities;
import com.android.launcher3.graphics.FastScrollThumbDrawable;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.systemui.shared.R;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class RecyclerViewFastScroller extends View {
    private final boolean mCanThumbDetach;
    private final ViewConfiguration mConfig;
    private final float mDeltaThreshold;
    private long mDownTimeStampMillis;
    private int mDownX;
    private int mDownY;
    private int mDy;
    private boolean mIgnoreDragGesture;
    private boolean mIsDragging;
    private boolean mIsThumbDetached;
    private int mLastY;
    private final int mMaxWidth;
    private final int mMinWidth;
    private AbstractC0290q0 mOnScrollListener;
    private String mPopupSectionName;
    private TextView mPopupView;
    private boolean mPopupVisible;
    protected FastScrollRecyclerView mRv;
    private Insets mSystemGestureInsets;
    private final RectF mThumbBounds;
    private final Point mThumbDrawOffset;
    protected final int mThumbHeight;
    protected int mThumbOffsetY;
    private final int mThumbPadding;
    private final Paint mThumbPaint;
    protected int mTouchOffsetY;
    private final Paint mTrackPaint;
    private int mWidth;
    private ObjectAnimator mWidthAnimator;
    private static final Rect sTempRect = new Rect();
    private static final Property TRACK_WIDTH = new Property() { // from class: com.android.launcher3.views.RecyclerViewFastScroller.1
        @Override // android.util.Property
        public final Object get(Object obj) {
            return Integer.valueOf(((RecyclerViewFastScroller) obj).mWidth);
        }

        @Override // android.util.Property
        public final void set(Object obj, Object obj2) {
            RecyclerViewFastScroller.c((RecyclerViewFastScroller) obj, ((Integer) obj2).intValue());
        }
    };
    private static final List SYSTEM_GESTURE_EXCLUSION_RECT = Collections.singletonList(new Rect());

    public RecyclerViewFastScroller(Context context) {
        this(context, null);
    }

    private void animatePopupVisibility(boolean z4) {
        if (this.mPopupVisible != z4) {
            this.mPopupVisible = z4;
            this.mPopupView.animate().cancel();
            this.mPopupView.animate().alpha(z4 ? 1.0f : 0.0f).setDuration(z4 ? 200L : 150L).start();
        }
    }

    public static void c(RecyclerViewFastScroller recyclerViewFastScroller, int i4) {
        if (recyclerViewFastScroller.mWidth == i4) {
            return;
        }
        recyclerViewFastScroller.mWidth = i4;
        recyclerViewFastScroller.invalidate();
    }

    private boolean isNearThumb(int i4, int i5) {
        int i6 = i5 - this.mThumbOffsetY;
        return i4 >= 0 && i4 < getWidth() && i6 >= 0 && i6 <= this.mThumbHeight;
    }

    private void showActiveScrollbar(boolean z4) {
        ObjectAnimator objectAnimator = this.mWidthAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        Property property = TRACK_WIDTH;
        int[] iArr = new int[1];
        iArr[0] = z4 ? this.mMaxWidth : this.mMinWidth;
        ObjectAnimator ofInt = ObjectAnimator.ofInt(this, property, iArr);
        this.mWidthAnimator = ofInt;
        ofInt.setDuration(150L);
        this.mWidthAnimator.start();
    }

    public final void endFastScrolling() {
        this.mRv.onFastScrollCompleted();
        this.mTouchOffsetY = 0;
        this.mIgnoreDragGesture = false;
        if (this.mIsDragging) {
            this.mIsDragging = false;
            animatePopupVisibility(false);
            showActiveScrollbar(false);
        }
    }

    public final int getThumbHeight() {
        return this.mThumbHeight;
    }

    public final int getThumbOffsetY() {
        return this.mThumbOffsetY;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
        if (r9 != 3) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleTouchEvent(android.view.MotionEvent r8, android.graphics.Point r9) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.views.RecyclerViewFastScroller.handleTouchEvent(android.view.MotionEvent, android.graphics.Point):boolean");
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    public final boolean isDraggingThumb() {
        return this.mIsDragging;
    }

    public final boolean isHitInParent(float f4, float f5, Point point) {
        if (this.mThumbOffsetY < 0) {
            return false;
        }
        Rect rect = sTempRect;
        getHitRect(rect);
        int scrollBarTop = this.mRv.getScrollBarTop() + rect.top;
        rect.top = scrollBarTop;
        if (point != null) {
            point.set(rect.left, scrollBarTop);
        }
        return rect.contains((int) f4, (int) f5);
    }

    public final boolean isThumbDetached() {
        return this.mIsThumbDetached;
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        if (Utilities.ATLEAST_Q) {
            this.mSystemGestureInsets = windowInsets.getSystemGestureInsets();
        }
        return super.onApplyWindowInsets(windowInsets);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.mThumbOffsetY < 0 || this.mRv == null) {
            return;
        }
        int save = canvas.save();
        canvas.translate(getWidth() / 2, this.mRv.getScrollBarTop());
        this.mThumbDrawOffset.set(getWidth() / 2, this.mRv.getScrollBarTop());
        float f4 = this.mWidth / 2;
        float scrollbarTrackHeight = this.mRv.getScrollbarTrackHeight();
        float f5 = this.mWidth;
        canvas.drawRoundRect(-f4, 0.0f, f4, scrollbarTrackHeight, f5, f5, this.mTrackPaint);
        canvas.translate(0.0f, this.mThumbOffsetY);
        this.mThumbDrawOffset.y += this.mThumbOffsetY;
        int i4 = this.mThumbPadding;
        float f6 = f4 + i4;
        float f7 = this.mWidth + i4 + i4;
        this.mThumbBounds.set(-f6, 0.0f, f6, this.mThumbHeight);
        canvas.drawRoundRect(this.mThumbBounds, f7, f7, this.mThumbPaint);
        boolean z4 = Utilities.ATLEAST_Q;
        if (z4) {
            RectF rectF = this.mThumbBounds;
            List<Rect> list = SYSTEM_GESTURE_EXCLUSION_RECT;
            rectF.roundOut(list.get(0));
            Point point = this.mThumbDrawOffset;
            list.get(0).offset(point.x, point.y);
            if (z4 && this.mSystemGestureInsets != null) {
                list.get(0).left = list.get(0).right - this.mSystemGestureInsets.right;
            }
            setSystemGestureExclusionRects(list);
        }
        canvas.restoreToCount(save);
    }

    public final void reattachThumbToScroll() {
        this.mIsThumbDetached = false;
    }

    public final void setPopupView(TextView textView) {
        this.mPopupView = textView;
        textView.setBackground(new FastScrollThumbDrawable(this.mThumbPaint, Utilities.isRtl(getResources())));
    }

    public final void setRecyclerView(FastScrollRecyclerView fastScrollRecyclerView) {
        AbstractC0290q0 abstractC0290q0;
        FastScrollRecyclerView fastScrollRecyclerView2 = this.mRv;
        if (fastScrollRecyclerView2 != null && (abstractC0290q0 = this.mOnScrollListener) != null) {
            fastScrollRecyclerView2.removeOnScrollListener(abstractC0290q0);
        }
        this.mRv = fastScrollRecyclerView;
        AbstractC0290q0 abstractC0290q02 = new AbstractC0290q0() { // from class: com.android.launcher3.views.RecyclerViewFastScroller.2
            @Override // androidx.recyclerview.widget.AbstractC0290q0
            public final void onScrolled(RecyclerView recyclerView, int i4, int i5) {
                RecyclerViewFastScroller recyclerViewFastScroller = RecyclerViewFastScroller.this;
                recyclerViewFastScroller.mDy = i5;
                recyclerViewFastScroller.mRv.onUpdateScrollbar(i5);
            }
        };
        this.mOnScrollListener = abstractC0290q02;
        fastScrollRecyclerView.addOnScrollListener(abstractC0290q02);
    }

    public final void setThumbOffsetY(int i4) {
        if (this.mThumbOffsetY == i4) {
            return;
        }
        int height = this.mPopupView.getHeight();
        int i5 = this.mWidth;
        int i6 = this.mThumbPadding;
        this.mPopupView.setTranslationY(Utilities.boundToRange(((((i5 + i6) + i6) / 2.0f) + (this.mRv.getScrollBarTop() + i4)) - (height / 2.0f), 0.0f, (this.mRv.getScrollbarTrackHeight() + (this.mRv.getScrollBarTop() + getTop())) - height));
        this.mThumbOffsetY = i4;
        invalidate();
    }

    public final boolean shouldBlockIntercept(int i4, int i5) {
        return isNearThumb(i4, i5);
    }

    public RecyclerViewFastScroller(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RecyclerViewFastScroller(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mDy = 0;
        this.mThumbBounds = new RectF();
        this.mThumbDrawOffset = new Point();
        Paint paint = new Paint();
        this.mTrackPaint = paint;
        paint.setColor(GraphicsUtils.getAttrColor(16842806, context));
        paint.setAlpha(30);
        Paint paint2 = new Paint();
        this.mThumbPaint = paint2;
        paint2.setAntiAlias(true);
        paint2.setColor(GraphicsUtils.getAttrColor(16843829, context));
        paint2.setStyle(Paint.Style.FILL);
        Resources resources = getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.fastscroll_track_min_width);
        this.mMinWidth = dimensionPixelSize;
        this.mWidth = dimensionPixelSize;
        this.mMaxWidth = resources.getDimensionPixelSize(R.dimen.fastscroll_track_max_width);
        this.mThumbPadding = resources.getDimensionPixelSize(R.dimen.fastscroll_thumb_padding);
        this.mThumbHeight = resources.getDimensionPixelSize(R.dimen.fastscroll_thumb_height);
        this.mConfig = ViewConfiguration.get(context);
        this.mDeltaThreshold = resources.getDisplayMetrics().density * 4.0f;
        float f4 = resources.getDisplayMetrics().density;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RecyclerViewFastScroller, i4, 0);
        this.mCanThumbDetach = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
    }
}
