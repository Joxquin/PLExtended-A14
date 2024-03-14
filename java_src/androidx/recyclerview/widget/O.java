package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
/* loaded from: classes.dex */
public class O {
    private final DisplayMetrics mDisplayMetrics;
    private AbstractC0280l0 mLayoutManager;
    private float mMillisPerPixel;
    private boolean mPendingInitialRun;
    private RecyclerView mRecyclerView;
    private boolean mRunning;
    private boolean mStarted;
    protected PointF mTargetVector;
    private View mTargetView;
    private int mTargetPosition = -1;
    private final y0 mRecyclingAction = new y0();
    protected final LinearInterpolator mLinearInterpolator = new LinearInterpolator();
    protected final DecelerateInterpolator mDecelerateInterpolator = new DecelerateInterpolator();
    private boolean mHasCalculatedMillisPerPixel = false;
    protected int mInterimTargetDx = 0;
    protected int mInterimTargetDy = 0;

    public O(Context context) {
        this.mDisplayMetrics = context.getResources().getDisplayMetrics();
    }

    public static int calculateDtToFit(int i4, int i5, int i6, int i7, int i8) {
        if (i8 != -1) {
            if (i8 != 0) {
                if (i8 == 1) {
                    return i7 - i5;
                }
                throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
            }
            int i9 = i6 - i4;
            if (i9 > 0) {
                return i9;
            }
            int i10 = i7 - i5;
            if (i10 < 0) {
                return i10;
            }
            return 0;
        }
        return i6 - i4;
    }

    public final PointF a(int i4) {
        AbstractC0280l0 abstractC0280l0 = this.mLayoutManager;
        if (abstractC0280l0 instanceof z0) {
            return ((z0) abstractC0280l0).computeScrollVectorForPosition(i4);
        }
        Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + z0.class.getCanonicalName());
        return null;
    }

    public final int b() {
        return this.mTargetPosition;
    }

    public final boolean c() {
        return this.mPendingInitialRun;
    }

    public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    public int calculateTimeForScrolling(int i4) {
        float abs = Math.abs(i4);
        if (!this.mHasCalculatedMillisPerPixel) {
            this.mMillisPerPixel = calculateSpeedPerPixel(this.mDisplayMetrics);
            this.mHasCalculatedMillisPerPixel = true;
        }
        return (int) Math.ceil(abs * this.mMillisPerPixel);
    }

    public final boolean d() {
        return this.mRunning;
    }

    public final void e(int i4, int i5) {
        float f4;
        PointF a4;
        RecyclerView recyclerView = this.mRecyclerView;
        if (this.mTargetPosition == -1 || recyclerView == null) {
            i();
        }
        if (this.mPendingInitialRun && this.mTargetView == null && this.mLayoutManager != null && (a4 = a(this.mTargetPosition)) != null) {
            float f5 = a4.x;
            if (f5 != 0.0f || a4.y != 0.0f) {
                recyclerView.scrollStep((int) Math.signum(f5), (int) Math.signum(a4.y), null);
            }
        }
        this.mPendingInitialRun = false;
        View view = this.mTargetView;
        y0 y0Var = this.mRecyclingAction;
        if (view != null) {
            if (this.mRecyclerView.getChildLayoutPosition(view) == this.mTargetPosition) {
                View view2 = this.mTargetView;
                A0 a02 = recyclerView.mState;
                onTargetFound(view2, y0Var);
                y0Var.a(recyclerView);
                i();
            } else {
                Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                this.mTargetView = null;
            }
        }
        if (this.mRunning) {
            A0 a03 = recyclerView.mState;
            if (this.mRecyclerView.mLayout.getChildCount() == 0) {
                i();
            } else {
                int i6 = this.mInterimTargetDx;
                int i7 = i6 - i4;
                if (i6 * i7 <= 0) {
                    i7 = 0;
                }
                this.mInterimTargetDx = i7;
                int i8 = this.mInterimTargetDy;
                int i9 = i8 - i5;
                if (i8 * i9 <= 0) {
                    i9 = 0;
                }
                this.mInterimTargetDy = i9;
                if (i7 == 0 && i9 == 0) {
                    PointF a5 = a(this.mTargetPosition);
                    if (a5 != null) {
                        if (a5.x != 0.0f || a5.y != 0.0f) {
                            float f6 = a5.y;
                            float sqrt = (float) Math.sqrt((f6 * f6) + (f4 * f4));
                            float f7 = a5.x / sqrt;
                            a5.x = f7;
                            float f8 = a5.y / sqrt;
                            a5.y = f8;
                            this.mTargetVector = a5;
                            this.mInterimTargetDx = (int) (f7 * 10000.0f);
                            this.mInterimTargetDy = (int) (f8 * 10000.0f);
                            int calculateTimeForScrolling = calculateTimeForScrolling(10000);
                            LinearInterpolator linearInterpolator = this.mLinearInterpolator;
                            y0Var.f4041a = (int) (this.mInterimTargetDx * 1.2f);
                            y0Var.f4042b = (int) (this.mInterimTargetDy * 1.2f);
                            y0Var.f4043c = (int) (calculateTimeForScrolling * 1.2f);
                            y0Var.f4045e = linearInterpolator;
                            y0Var.f4046f = true;
                        }
                    }
                    y0Var.f4044d = this.mTargetPosition;
                    i();
                }
            }
            boolean z4 = y0Var.f4044d >= 0;
            y0Var.a(recyclerView);
            if (z4 && this.mRunning) {
                this.mPendingInitialRun = true;
                recyclerView.mViewFlinger.b();
            }
        }
    }

    public final void f(View view) {
        if (this.mRecyclerView.getChildLayoutPosition(view) == this.mTargetPosition) {
            this.mTargetView = view;
            if (RecyclerView.sVerboseLoggingEnabled) {
                Log.d("RecyclerView", "smooth scroll target view has been attached");
            }
        }
    }

    public final void g(int i4) {
        this.mTargetPosition = i4;
    }

    public int getVerticalSnapPreference() {
        PointF pointF = this.mTargetVector;
        if (pointF != null) {
            float f4 = pointF.y;
            if (f4 != 0.0f) {
                return f4 > 0.0f ? 1 : -1;
            }
        }
        return 0;
    }

    public final void h(RecyclerView recyclerView, AbstractC0280l0 abstractC0280l0) {
        D0 d02 = recyclerView.mViewFlinger;
        d02.f3788j.removeCallbacks(d02);
        d02.f3784f.abortAnimation();
        if (this.mStarted) {
            Log.w("RecyclerView", "An instance of " + getClass().getSimpleName() + " was started more than once. Each instance of" + getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
        }
        this.mRecyclerView = recyclerView;
        this.mLayoutManager = abstractC0280l0;
        int i4 = this.mTargetPosition;
        if (i4 == -1) {
            throw new IllegalArgumentException("Invalid target position");
        }
        recyclerView.mState.f3758a = i4;
        this.mRunning = true;
        this.mPendingInitialRun = true;
        this.mTargetView = recyclerView.mLayout.findViewByPosition(i4);
        onStart();
        this.mRecyclerView.mViewFlinger.b();
        this.mStarted = true;
    }

    public final void i() {
        if (this.mRunning) {
            this.mRunning = false;
            onStop();
            this.mRecyclerView.mState.f3758a = -1;
            this.mTargetView = null;
            this.mTargetPosition = -1;
            this.mPendingInitialRun = false;
            AbstractC0280l0 abstractC0280l0 = this.mLayoutManager;
            if (abstractC0280l0.mSmoothScroller == this) {
                abstractC0280l0.mSmoothScroller = null;
            }
            this.mLayoutManager = null;
            this.mRecyclerView = null;
        }
    }

    public void onStart() {
    }

    public void onStop() {
        this.mInterimTargetDy = 0;
        this.mInterimTargetDx = 0;
        this.mTargetVector = null;
    }

    public void onTargetFound(View view, y0 y0Var) {
        int i4;
        int i5;
        PointF pointF = this.mTargetVector;
        int i6 = 0;
        int i7 = (pointF == null || pointF.x == 0.0f) ? 0 : i5 > 0 ? 1 : -1;
        AbstractC0280l0 abstractC0280l0 = this.mLayoutManager;
        if (abstractC0280l0 == null || !abstractC0280l0.canScrollHorizontally()) {
            i4 = 0;
        } else {
            C0282m0 c0282m0 = (C0282m0) view.getLayoutParams();
            i4 = calculateDtToFit((view.getLeft() - ((C0282m0) view.getLayoutParams()).f3984b.left) - ((ViewGroup.MarginLayoutParams) c0282m0).leftMargin, view.getRight() + ((C0282m0) view.getLayoutParams()).f3984b.right + ((ViewGroup.MarginLayoutParams) c0282m0).rightMargin, abstractC0280l0.getPaddingLeft(), abstractC0280l0.getWidth() - abstractC0280l0.getPaddingRight(), i7);
        }
        int verticalSnapPreference = getVerticalSnapPreference();
        AbstractC0280l0 abstractC0280l02 = this.mLayoutManager;
        if (abstractC0280l02 != null && abstractC0280l02.canScrollVertically()) {
            C0282m0 c0282m02 = (C0282m0) view.getLayoutParams();
            i6 = calculateDtToFit(AbstractC0280l0.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) c0282m02).topMargin, view.getBottom() + ((C0282m0) view.getLayoutParams()).f3984b.bottom + ((ViewGroup.MarginLayoutParams) c0282m02).bottomMargin, abstractC0280l02.getPaddingTop(), abstractC0280l02.getHeight() - abstractC0280l02.getPaddingBottom(), verticalSnapPreference);
        }
        int ceil = (int) Math.ceil(calculateTimeForScrolling((int) Math.sqrt((i6 * i6) + (i4 * i4))) / 0.3356d);
        if (ceil > 0) {
            DecelerateInterpolator decelerateInterpolator = this.mDecelerateInterpolator;
            y0Var.f4041a = -i4;
            y0Var.f4042b = -i6;
            y0Var.f4043c = ceil;
            y0Var.f4045e = decelerateInterpolator;
            y0Var.f4046f = true;
        }
    }
}
