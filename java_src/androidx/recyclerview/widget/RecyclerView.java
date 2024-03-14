package androidx.recyclerview.widget;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.core.view.C0175l;
import androidx.core.view.C0177n;
import androidx.core.view.C0186x;
import androidx.core.view.C0187y;
import androidx.core.view.InterfaceC0176m;
import androidx.fragment.app.C0196d0;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import t.C1395a;
/* loaded from: classes.dex */
public class RecyclerView extends ViewGroup implements InterfaceC0176m {
    static final int DEFAULT_ORIENTATION = 1;
    static final boolean DISPATCH_TEMP_DETACH = false;
    private static final float FLING_DESTRETCH_FACTOR = 4.0f;
    static final long FOREVER_NS = Long.MAX_VALUE;
    public static final int HORIZONTAL = 0;
    private static final float INFLEXION = 0.35f;
    private static final int INVALID_POINTER = -1;
    public static final int INVALID_TYPE = -1;
    private static final Class[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
    static final String LOW_RES_ROTARY_ENCODER_FEATURE = "android.hardware.rotaryencoder.lowres";
    static final int MAX_SCROLL_DURATION = 2000;
    public static final long NO_ID = -1;
    public static final int NO_POSITION = -1;
    private static final float SCROLL_FRICTION = 0.015f;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    static final String TAG = "RecyclerView";
    public static final int TOUCH_SLOP_DEFAULT = 0;
    public static final int TOUCH_SLOP_PAGING = 1;
    static final String TRACE_BIND_VIEW_TAG = "RV OnBindView";
    static final String TRACE_CREATE_VIEW_TAG = "RV CreateView";
    private static final String TRACE_HANDLE_ADAPTER_UPDATES_TAG = "RV PartialInvalidate";
    static final String TRACE_NESTED_PREFETCH_TAG = "RV Nested Prefetch";
    private static final String TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG = "RV FullInvalidate";
    private static final String TRACE_ON_LAYOUT_TAG = "RV OnLayout";
    static final String TRACE_PREFETCH_TAG = "RV Prefetch";
    static final String TRACE_SCROLL_TAG = "RV Scroll";
    public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;
    static final boolean VERBOSE_TRACING = false;
    public static final int VERTICAL = 1;
    static boolean sDebugAssertionsEnabled = false;
    static final B0 sDefaultEdgeEffectFactory;
    static final Interpolator sQuinticInterpolator;
    static boolean sVerboseLoggingEnabled = false;
    G0 mAccessibilityDelegate;
    private final AccessibilityManager mAccessibilityManager;
    Z mAdapter;
    C0259b mAdapterHelper;
    boolean mAdapterUpdateDuringMeasure;
    private EdgeEffect mBottomGlow;
    private InterfaceC0262c0 mChildDrawingOrderCallback;
    C0269g mChildHelper;
    boolean mClipToPadding;
    boolean mDataSetHasChangedAfterLayout;
    boolean mDispatchItemsChangedEvent;
    private int mDispatchScrollCounter;
    private int mEatenAccessibilityChangeFlags;
    private C0264d0 mEdgeEffectFactory;
    boolean mEnableFastScroller;
    boolean mFirstLayoutComplete;
    E mGapWorker;
    boolean mHasFixedSize;
    private boolean mIgnoreMotionEventTillDown;
    private int mInitialTouchX;
    private int mInitialTouchY;
    private int mInterceptRequestLayoutDepth;
    private InterfaceC0288p0 mInterceptingOnItemTouchListener;
    boolean mIsAttached;
    AbstractC0272h0 mItemAnimator;
    private InterfaceC0268f0 mItemAnimatorListener;
    private Runnable mItemAnimatorRunner;
    final ArrayList mItemDecorations;
    boolean mItemsAddedOrRemoved;
    boolean mItemsChanged;
    private int mLastAutoMeasureNonExactMeasuredHeight;
    private int mLastAutoMeasureNonExactMeasuredWidth;
    private boolean mLastAutoMeasureSkippedDueToExact;
    private int mLastTouchX;
    private int mLastTouchY;
    AbstractC0280l0 mLayout;
    private int mLayoutOrScrollCounter;
    boolean mLayoutSuppressed;
    boolean mLayoutWasDefered;
    private EdgeEffect mLeftGlow;
    boolean mLowResRotaryEncoderFeature;
    private final int mMaxFlingVelocity;
    private final int mMinFlingVelocity;
    private final int[] mMinMaxLayoutPositions;
    private final int[] mNestedOffsets;
    private final C0299v0 mObserver;
    private List mOnChildAttachStateListeners;
    private AbstractC0286o0 mOnFlingListener;
    private final ArrayList mOnItemTouchListeners;
    final List mPendingAccessibilityImportanceChange;
    x0 mPendingSavedState;
    private final float mPhysicalCoef;
    boolean mPostedAnimatorRunner;
    C mPrefetchRegistry;
    private boolean mPreserveFocusAfterLayout;
    final C0295t0 mRecycler;
    InterfaceC0297u0 mRecyclerListener;
    final List mRecyclerListeners;
    final int[] mReusableIntPair;
    private EdgeEffect mRightGlow;
    private float mScaledHorizontalScrollFactor;
    private float mScaledVerticalScrollFactor;
    private AbstractC0290q0 mScrollListener;
    private List mScrollListeners;
    private final int[] mScrollOffset;
    private int mScrollPointerId;
    private int mScrollState;
    private C0177n mScrollingChildHelper;
    final A0 mState;
    final Rect mTempRect;
    private final Rect mTempRect2;
    final RectF mTempRectF;
    private EdgeEffect mTopGlow;
    private int mTouchSlop;
    final Runnable mUpdateChildViewsRunnable;
    private VelocityTracker mVelocityTracker;
    final D0 mViewFlinger;
    private final V0 mViewInfoProcessCallback;
    final W0 mViewInfoStore;
    private static final int[] NESTED_SCROLLING_ATTRS = {16843830};
    private static final float DECELERATION_RATE = (float) (Math.log(0.78d) / Math.log(0.9d));
    static final boolean FORCE_INVALIDATE_DISPLAY_LIST = false;
    static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC = true;
    static final boolean POST_UPDATES_ON_ANIMATION = true;
    static final boolean ALLOW_THREAD_GAP_WORK = true;
    private static final boolean FORCE_ABS_FOCUS_SEARCH_DIRECTION = false;
    private static final boolean IGNORE_DETACHED_FOCUSED_CHILD = false;

    static {
        Class cls = Integer.TYPE;
        LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[]{Context.class, AttributeSet.class, cls, cls};
        sQuinticInterpolator = new X();
        sDefaultEdgeEffectFactory = new B0();
    }

    public RecyclerView(Context context) {
        this(context, null);
    }

    private void addAnimatingView(E0 e02) {
        View view = e02.itemView;
        boolean z4 = view.getParent() == this;
        this.mRecycler.m(getChildViewHolder(view));
        if (e02.isTmpDetached()) {
            this.mChildHelper.b(view, -1, view.getLayoutParams(), true);
        } else if (!z4) {
            this.mChildHelper.a(view, -1, true);
        } else {
            C0269g c0269g = this.mChildHelper;
            int indexOfChild = c0269g.f3936a.f3917a.indexOfChild(view);
            if (indexOfChild >= 0) {
                c0269g.f3937b.h(indexOfChild);
                c0269g.i(view);
                return;
            }
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    private void animateChange(E0 e02, E0 e03, C0270g0 c0270g0, C0270g0 c0270g02, boolean z4, boolean z5) {
        e02.setIsRecyclable(false);
        if (z4) {
            addAnimatingView(e02);
        }
        if (e02 != e03) {
            if (z5) {
                addAnimatingView(e03);
            }
            e02.mShadowedHolder = e03;
            addAnimatingView(e02);
            this.mRecycler.m(e02);
            e03.setIsRecyclable(false);
            e03.mShadowingHolder = e02;
        }
        if (this.mItemAnimator.a(e02, e03, c0270g0, c0270g02)) {
            postAnimationRunner();
        }
    }

    private void cancelScroll() {
        resetScroll();
        setScrollState(0);
    }

    public static void clearNestedRecyclerViewIfNotNested(E0 e02) {
        WeakReference weakReference = e02.mNestedRecyclerView;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            while (view != null) {
                if (view == e02.itemView) {
                    return;
                }
                ViewParent parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            e02.mNestedRecyclerView = null;
        }
    }

    private int consumeFlingInStretch(int i4, EdgeEffect edgeEffect, EdgeEffect edgeEffect2, int i5) {
        if (i4 > 0 && edgeEffect != null && N.c.b(edgeEffect) != DECELERATION_RATE) {
            int round = Math.round(N.c.c(edgeEffect, ((-i4) * FLING_DESTRETCH_FACTOR) / i5, 0.5f) * ((-i5) / FLING_DESTRETCH_FACTOR));
            if (round != i4) {
                edgeEffect.finish();
            }
            return i4 - round;
        } else if (i4 >= 0 || edgeEffect2 == null || N.c.b(edgeEffect2) == DECELERATION_RATE) {
            return i4;
        } else {
            float f4 = i5;
            int round2 = Math.round(N.c.c(edgeEffect2, (i4 * FLING_DESTRETCH_FACTOR) / f4, 0.5f) * (f4 / FLING_DESTRETCH_FACTOR));
            if (round2 != i4) {
                edgeEffect2.finish();
            }
            return i4 - round2;
        }
    }

    private void createLayoutManager(Context context, String str, AttributeSet attributeSet, int i4, int i5) {
        Constructor constructor;
        Object[] objArr;
        if (str != null) {
            String trim = str.trim();
            if (trim.isEmpty()) {
                return;
            }
            String fullClassName = getFullClassName(context, trim);
            try {
                Class<? extends U> asSubclass = Class.forName(fullClassName, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(AbstractC0280l0.class);
                try {
                    constructor = asSubclass.getConstructor(LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
                    objArr = new Object[]{context, attributeSet, Integer.valueOf(i4), Integer.valueOf(i5)};
                } catch (NoSuchMethodException e4) {
                    try {
                        constructor = asSubclass.getConstructor(new Class[0]);
                        objArr = null;
                    } catch (NoSuchMethodException e5) {
                        e5.initCause(e4);
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + fullClassName, e5);
                    }
                }
                constructor.setAccessible(true);
                setLayoutManager((AbstractC0280l0) constructor.newInstance(objArr));
            } catch (ClassCastException e6) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + fullClassName, e6);
            } catch (ClassNotFoundException e7) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + fullClassName, e7);
            } catch (IllegalAccessException e8) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + fullClassName, e8);
            } catch (InstantiationException e9) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + fullClassName, e9);
            } catch (InvocationTargetException e10) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + fullClassName, e10);
            }
        }
    }

    private boolean didChildRangeChange(int i4, int i5) {
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        int[] iArr = this.mMinMaxLayoutPositions;
        return (iArr[0] == i4 && iArr[1] == i5) ? false : true;
    }

    private void dispatchContentChangedIfNecessary() {
        int i4 = this.mEatenAccessibilityChangeFlags;
        this.mEatenAccessibilityChangeFlags = 0;
        if (i4 == 0 || !isAccessibilityEnabled()) {
            return;
        }
        AccessibilityEvent obtain = AccessibilityEvent.obtain();
        obtain.setEventType(2048);
        obtain.setContentChangeTypes(i4);
        sendAccessibilityEventUnchecked(obtain);
    }

    private void dispatchLayoutStep1() {
        this.mState.a(1);
        fillRemainingScrollValues(this.mState);
        this.mState.f3766i = false;
        startInterceptRequestLayout();
        W0 w02 = this.mViewInfoStore;
        w02.f3915a.clear();
        w02.f3916b.a();
        onEnterLayoutOrScroll();
        processAdapterUpdatesAndSetAnimationFlags();
        saveFocusInfo();
        A0 a02 = this.mState;
        a02.f3765h = a02.f3767j && this.mItemsChanged;
        this.mItemsChanged = false;
        this.mItemsAddedOrRemoved = false;
        a02.f3764g = a02.f3768k;
        a02.f3762e = this.mAdapter.getItemCount();
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        if (this.mState.f3767j) {
            int e4 = this.mChildHelper.e();
            for (int i4 = 0; i4 < e4; i4++) {
                E0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i4));
                if (!childViewHolderInt.shouldIgnore() && (!childViewHolderInt.isInvalid() || this.mAdapter.hasStableIds())) {
                    AbstractC0272h0 abstractC0272h0 = this.mItemAnimator;
                    AbstractC0272h0.b(childViewHolderInt);
                    childViewHolderInt.getUnmodifiedPayloads();
                    abstractC0272h0.getClass();
                    C0270g0 c0270g0 = new C0270g0();
                    c0270g0.a(childViewHolderInt);
                    q.m mVar = this.mViewInfoStore.f3915a;
                    U0 u02 = (U0) mVar.get(childViewHolderInt);
                    if (u02 == null) {
                        u02 = U0.a();
                        mVar.put(childViewHolderInt, u02);
                    }
                    u02.f3907b = c0270g0;
                    u02.f3906a |= 4;
                    if (this.mState.f3765h) {
                        if (((childViewHolderInt.mFlags & 2) != 0) && !childViewHolderInt.isRemoved() && !childViewHolderInt.shouldIgnore() && !childViewHolderInt.isInvalid()) {
                            this.mViewInfoStore.f3916b.f(getChangedHolderKey(childViewHolderInt), childViewHolderInt);
                        }
                    }
                }
            }
        }
        if (this.mState.f3768k) {
            saveOldPositions();
            A0 a03 = this.mState;
            boolean z4 = a03.f3763f;
            a03.f3763f = false;
            this.mLayout.onLayoutChildren(this.mRecycler, a03);
            this.mState.f3763f = z4;
            for (int i5 = 0; i5 < this.mChildHelper.e(); i5++) {
                E0 childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.d(i5));
                if (!childViewHolderInt2.shouldIgnore()) {
                    U0 u03 = (U0) this.mViewInfoStore.f3915a.get(childViewHolderInt2);
                    if (!((u03 == null || (u03.f3906a & 4) == 0) ? false : true)) {
                        AbstractC0272h0.b(childViewHolderInt2);
                        boolean z5 = (childViewHolderInt2.mFlags & 8192) != 0;
                        AbstractC0272h0 abstractC0272h02 = this.mItemAnimator;
                        childViewHolderInt2.getUnmodifiedPayloads();
                        abstractC0272h02.getClass();
                        C0270g0 c0270g02 = new C0270g0();
                        c0270g02.a(childViewHolderInt2);
                        if (z5) {
                            recordAnimationInfoIfBouncedHiddenView(childViewHolderInt2, c0270g02);
                        } else {
                            q.m mVar2 = this.mViewInfoStore.f3915a;
                            U0 u04 = (U0) mVar2.get(childViewHolderInt2);
                            if (u04 == null) {
                                u04 = U0.a();
                                mVar2.put(childViewHolderInt2, u04);
                            }
                            u04.f3906a |= 2;
                            u04.f3907b = c0270g02;
                        }
                    }
                }
            }
            clearOldPositions();
        } else {
            clearOldPositions();
        }
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mState.f3761d = 2;
    }

    private void dispatchLayoutStep2() {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        this.mState.a(6);
        this.mAdapterHelper.c();
        this.mState.f3762e = this.mAdapter.getItemCount();
        this.mState.f3760c = 0;
        if (this.mPendingSavedState != null && this.mAdapter.canRestoreState()) {
            Parcelable parcelable = this.mPendingSavedState.f4038f;
            if (parcelable != null) {
                this.mLayout.onRestoreInstanceState(parcelable);
            }
            this.mPendingSavedState = null;
        }
        A0 a02 = this.mState;
        a02.f3764g = false;
        this.mLayout.onLayoutChildren(this.mRecycler, a02);
        A0 a03 = this.mState;
        a03.f3763f = false;
        a03.f3767j = a03.f3767j && this.mItemAnimator != null;
        a03.f3761d = 4;
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
    }

    private void dispatchLayoutStep3() {
        boolean g4;
        this.mState.a(4);
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        A0 a02 = this.mState;
        a02.f3761d = 1;
        if (a02.f3767j) {
            for (int e4 = this.mChildHelper.e() - 1; e4 >= 0; e4--) {
                E0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(e4));
                if (!childViewHolderInt.shouldIgnore()) {
                    long changedHolderKey = getChangedHolderKey(childViewHolderInt);
                    this.mItemAnimator.getClass();
                    C0270g0 c0270g0 = new C0270g0();
                    c0270g0.a(childViewHolderInt);
                    E0 e02 = (E0) this.mViewInfoStore.f3916b.c(changedHolderKey);
                    if (e02 == null || e02.shouldIgnore()) {
                        this.mViewInfoStore.a(childViewHolderInt, c0270g0);
                    } else {
                        U0 u02 = (U0) this.mViewInfoStore.f3915a.get(e02);
                        boolean z4 = (u02 == null || (u02.f3906a & 1) == 0) ? false : true;
                        U0 u03 = (U0) this.mViewInfoStore.f3915a.get(childViewHolderInt);
                        boolean z5 = (u03 == null || (u03.f3906a & 1) == 0) ? false : true;
                        if (z4 && e02 == childViewHolderInt) {
                            this.mViewInfoStore.a(childViewHolderInt, c0270g0);
                        } else {
                            C0270g0 b4 = this.mViewInfoStore.b(e02, 4);
                            this.mViewInfoStore.a(childViewHolderInt, c0270g0);
                            C0270g0 b5 = this.mViewInfoStore.b(childViewHolderInt, 8);
                            if (b4 == null) {
                                handleMissingPreInfoForChangeError(changedHolderKey, childViewHolderInt, e02);
                            } else {
                                animateChange(e02, childViewHolderInt, b4, b5, z4, z5);
                            }
                        }
                    }
                }
            }
            W0 w02 = this.mViewInfoStore;
            V0 v02 = this.mViewInfoProcessCallback;
            q.m mVar = w02.f3915a;
            int i4 = mVar.f11967f;
            while (true) {
                i4--;
                if (i4 < 0) {
                    break;
                }
                E0 e03 = (E0) mVar.g(i4);
                U0 u04 = (U0) mVar.h(i4);
                int i5 = u04.f3906a;
                if ((i5 & 3) == 3) {
                    RecyclerView recyclerView = ((Y) v02).f3917a;
                    recyclerView.mLayout.removeAndRecycleView(e03.itemView, recyclerView.mRecycler);
                } else if ((i5 & 1) != 0) {
                    C0270g0 c0270g02 = u04.f3907b;
                    if (c0270g02 == null) {
                        RecyclerView recyclerView2 = ((Y) v02).f3917a;
                        recyclerView2.mLayout.removeAndRecycleView(e03.itemView, recyclerView2.mRecycler);
                    } else {
                        C0270g0 c0270g03 = u04.f3908c;
                        RecyclerView recyclerView3 = ((Y) v02).f3917a;
                        recyclerView3.mRecycler.m(e03);
                        recyclerView3.animateDisappearance(e03, c0270g02, c0270g03);
                    }
                } else if ((i5 & 14) == 14) {
                    ((Y) v02).f3917a.animateAppearance(e03, u04.f3907b, u04.f3908c);
                } else if ((i5 & 12) == 12) {
                    C0270g0 c0270g04 = u04.f3907b;
                    C0270g0 c0270g05 = u04.f3908c;
                    Y y4 = (Y) v02;
                    y4.getClass();
                    e03.setIsRecyclable(false);
                    RecyclerView recyclerView4 = y4.f3917a;
                    if (!recyclerView4.mDataSetHasChangedAfterLayout) {
                        C0283n c0283n = (C0283n) recyclerView4.mItemAnimator;
                        c0283n.getClass();
                        int i6 = c0270g04.f3939a;
                        int i7 = c0270g05.f3939a;
                        if (i6 == i7 && c0270g04.f3940b == c0270g05.f3940b) {
                            c0283n.c(e03);
                            g4 = false;
                        } else {
                            g4 = c0283n.g(e03, i6, c0270g04.f3940b, i7, c0270g05.f3940b);
                        }
                        if (g4) {
                            recyclerView4.postAnimationRunner();
                        }
                    } else if (recyclerView4.mItemAnimator.a(e03, e03, c0270g04, c0270g05)) {
                        recyclerView4.postAnimationRunner();
                    }
                } else if ((i5 & 4) != 0) {
                    C0270g0 c0270g06 = u04.f3907b;
                    RecyclerView recyclerView5 = ((Y) v02).f3917a;
                    recyclerView5.mRecycler.m(e03);
                    recyclerView5.animateDisappearance(e03, c0270g06, null);
                } else if ((i5 & 8) != 0) {
                    ((Y) v02).f3917a.animateAppearance(e03, u04.f3907b, u04.f3908c);
                }
                u04.f3906a = 0;
                u04.f3907b = null;
                u04.f3908c = null;
                U0.f3905d.b(u04);
            }
        }
        this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        A0 a03 = this.mState;
        a03.f3759b = a03.f3762e;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        a03.f3767j = false;
        a03.f3768k = false;
        this.mLayout.mRequestedSimpleAnimations = false;
        ArrayList arrayList = this.mRecycler.f4022b;
        if (arrayList != null) {
            arrayList.clear();
        }
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0.mPrefetchMaxObservedInInitialPrefetch) {
            abstractC0280l0.mPrefetchMaxCountObserved = 0;
            abstractC0280l0.mPrefetchMaxObservedInInitialPrefetch = false;
            this.mRecycler.n();
        }
        this.mLayout.onLayoutCompleted(this.mState);
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        W0 w03 = this.mViewInfoStore;
        w03.f3915a.clear();
        w03.f3916b.a();
        int[] iArr = this.mMinMaxLayoutPositions;
        if (didChildRangeChange(iArr[0], iArr[1])) {
            dispatchOnScrolled(0, 0);
        }
        recoverFocusFromState();
        resetFocusInfo();
    }

    private boolean dispatchToOnItemTouchListeners(MotionEvent motionEvent) {
        InterfaceC0288p0 interfaceC0288p0 = this.mInterceptingOnItemTouchListener;
        if (interfaceC0288p0 == null) {
            if (motionEvent.getAction() == 0) {
                return false;
            }
            return findInterceptingOnItemTouchListener(motionEvent);
        }
        interfaceC0288p0.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action == 3 || action == 1) {
            this.mInterceptingOnItemTouchListener = null;
        }
        return true;
    }

    private boolean findInterceptingOnItemTouchListener(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.mOnItemTouchListeners.size();
        for (int i4 = 0; i4 < size; i4++) {
            InterfaceC0288p0 interfaceC0288p0 = (InterfaceC0288p0) this.mOnItemTouchListeners.get(i4);
            if (interfaceC0288p0.onInterceptTouchEvent$1(motionEvent) && action != 3) {
                this.mInterceptingOnItemTouchListener = interfaceC0288p0;
                return true;
            }
        }
        return false;
    }

    private void findMinMaxChildLayoutPositions(int[] iArr) {
        int e4 = this.mChildHelper.e();
        if (e4 == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i4 = Integer.MAX_VALUE;
        int i5 = Integer.MIN_VALUE;
        for (int i6 = 0; i6 < e4; i6++) {
            E0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i6));
            if (!childViewHolderInt.shouldIgnore()) {
                int layoutPosition = childViewHolderInt.getLayoutPosition();
                if (layoutPosition < i4) {
                    i4 = layoutPosition;
                }
                if (layoutPosition > i5) {
                    i5 = layoutPosition;
                }
            }
        }
        iArr[0] = i4;
        iArr[1] = i5;
    }

    public static RecyclerView findNestedRecyclerView(View view) {
        if (view instanceof ViewGroup) {
            if (view instanceof RecyclerView) {
                return (RecyclerView) view;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                RecyclerView findNestedRecyclerView = findNestedRecyclerView(viewGroup.getChildAt(i4));
                if (findNestedRecyclerView != null) {
                    return findNestedRecyclerView;
                }
            }
            return null;
        }
        return null;
    }

    private View findNextViewToFocus() {
        E0 findViewHolderForAdapterPosition;
        A0 a02 = this.mState;
        int i4 = a02.f3769l;
        if (i4 == -1) {
            i4 = 0;
        }
        int b4 = a02.b();
        for (int i5 = i4; i5 < b4; i5++) {
            E0 findViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i5);
            if (findViewHolderForAdapterPosition2 == null) {
                break;
            }
            View view = findViewHolderForAdapterPosition2.itemView;
            if (view.hasFocusable()) {
                return view;
            }
        }
        int min = Math.min(b4, i4);
        while (true) {
            min--;
            if (min < 0 || (findViewHolderForAdapterPosition = findViewHolderForAdapterPosition(min)) == null) {
                return null;
            }
            View view2 = findViewHolderForAdapterPosition.itemView;
            if (view2.hasFocusable()) {
                return view2;
            }
        }
    }

    public static E0 getChildViewHolderInt(View view) {
        if (view == null) {
            return null;
        }
        return ((C0282m0) view.getLayoutParams()).f3983a;
    }

    public static void getDecoratedBoundsWithMarginsInt(View view, Rect rect) {
        C0282m0 c0282m0 = (C0282m0) view.getLayoutParams();
        Rect rect2 = c0282m0.f3984b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) c0282m0).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) c0282m0).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) c0282m0).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) c0282m0).bottomMargin);
    }

    private int getDeepestFocusedViewWithId(View view) {
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            view = ((ViewGroup) view).getFocusedChild();
            if (view.getId() != -1) {
                id = view.getId();
            }
        }
        return id;
    }

    private String getFullClassName(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        } else if (str.contains(".")) {
            return str;
        } else {
            return RecyclerView.class.getPackage().getName() + '.' + str;
        }
    }

    private C0177n getScrollingChildHelper() {
        if (this.mScrollingChildHelper == null) {
            this.mScrollingChildHelper = new C0177n(this);
        }
        return this.mScrollingChildHelper;
    }

    private float getSplineFlingDistance(int i4) {
        double log = Math.log((Math.abs(i4) * INFLEXION) / (this.mPhysicalCoef * SCROLL_FRICTION));
        float f4 = DECELERATION_RATE;
        return (float) (Math.exp((f4 / (f4 - 1.0d)) * log) * this.mPhysicalCoef * SCROLL_FRICTION);
    }

    private void handleMissingPreInfoForChangeError(long j4, E0 e02, E0 e03) {
        int e4 = this.mChildHelper.e();
        for (int i4 = 0; i4 < e4; i4++) {
            E0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i4));
            if (childViewHolderInt != e02 && getChangedHolderKey(childViewHolderInt) == j4) {
                Z z4 = this.mAdapter;
                if (z4 == null || !z4.hasStableIds()) {
                    StringBuilder sb = new StringBuilder("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:");
                    sb.append(childViewHolderInt);
                    sb.append(" \n View Holder 2:");
                    sb.append(e02);
                    throw new IllegalStateException(C0265e.a(this, sb));
                }
                StringBuilder sb2 = new StringBuilder("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:");
                sb2.append(childViewHolderInt);
                sb2.append(" \n View Holder 2:");
                sb2.append(e02);
                throw new IllegalStateException(C0265e.a(this, sb2));
            }
        }
        Log.e(TAG, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + e03 + " cannot be found but it is necessary for " + e02 + exceptionLabel());
    }

    private boolean hasUpdatedView() {
        int e4 = this.mChildHelper.e();
        for (int i4 = 0; i4 < e4; i4++) {
            E0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i4));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                if ((childViewHolderInt.mFlags & 2) != 0) {
                    return true;
                }
            }
        }
        return false;
    }

    private void initAutofill() {
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        if (androidx.core.view.F.a(this) == 0) {
            androidx.core.view.F.b(this, 8);
        }
    }

    private void initChildrenHelper() {
        this.mChildHelper = new C0269g(new Y(this));
    }

    private boolean isPreferredNextFocus(View view, View view2, int i4) {
        int i5;
        if (view2 == null || view2 == this || view2 == view || findContainingItemView(view2) == null) {
            return false;
        }
        if (view == null || findContainingItemView(view) == null) {
            return true;
        }
        this.mTempRect.set(0, 0, view.getWidth(), view.getHeight());
        this.mTempRect2.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        offsetDescendantRectToMyCoords(view2, this.mTempRect2);
        RecyclerView recyclerView = this.mLayout.mRecyclerView;
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        char c4 = 65535;
        int i6 = C0187y.c(recyclerView) == 1 ? -1 : 1;
        Rect rect = this.mTempRect;
        int i7 = rect.left;
        Rect rect2 = this.mTempRect2;
        int i8 = rect2.left;
        if ((i7 < i8 || rect.right <= i8) && rect.right < rect2.right) {
            i5 = 1;
        } else {
            int i9 = rect.right;
            int i10 = rect2.right;
            i5 = ((i9 > i10 || i7 >= i10) && i7 > i8) ? -1 : 0;
        }
        int i11 = rect.top;
        int i12 = rect2.top;
        if ((i11 < i12 || rect.bottom <= i12) && rect.bottom < rect2.bottom) {
            c4 = 1;
        } else {
            int i13 = rect.bottom;
            int i14 = rect2.bottom;
            if ((i13 <= i14 && i11 < i14) || i11 <= i12) {
                c4 = 0;
            }
        }
        if (i4 == 1) {
            return c4 < 0 || (c4 == 0 && i5 * i6 < 0);
        } else if (i4 == 2) {
            return c4 > 0 || (c4 == 0 && i5 * i6 > 0);
        } else if (i4 == 17) {
            return i5 < 0;
        } else if (i4 == 33) {
            return c4 < 0;
        } else if (i4 == 66) {
            return i5 > 0;
        } else if (i4 == 130) {
            return c4 > 0;
        } else {
            StringBuilder sb = new StringBuilder("Invalid direction: ");
            sb.append(i4);
            throw new IllegalArgumentException(C0265e.a(this, sb));
        }
    }

    private void nestedScrollByInternal(int i4, int i5, MotionEvent motionEvent, int i6) {
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 == null) {
            Log.e(TAG, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (this.mLayoutSuppressed) {
        } else {
            int[] iArr = this.mReusableIntPair;
            iArr[0] = 0;
            iArr[1] = 0;
            boolean canScrollHorizontally = abstractC0280l0.canScrollHorizontally();
            boolean canScrollVertically = this.mLayout.canScrollVertically();
            int i7 = canScrollVertically ? canScrollHorizontally | 2 : canScrollHorizontally;
            float height = motionEvent == null ? getHeight() / 2.0f : motionEvent.getY();
            float width = motionEvent == null ? getWidth() / 2.0f : motionEvent.getX();
            int releaseHorizontalGlow = i4 - releaseHorizontalGlow(i4, height);
            int releaseVerticalGlow = i5 - releaseVerticalGlow(i5, width);
            startNestedScroll(i7, i6);
            if (dispatchNestedPreScroll(canScrollHorizontally != 0 ? releaseHorizontalGlow : 0, canScrollVertically ? releaseVerticalGlow : 0, this.mReusableIntPair, this.mScrollOffset, i6)) {
                int[] iArr2 = this.mReusableIntPair;
                releaseHorizontalGlow -= iArr2[0];
                releaseVerticalGlow -= iArr2[1];
            }
            scrollByInternal(canScrollHorizontally != 0 ? releaseHorizontalGlow : 0, canScrollVertically ? releaseVerticalGlow : 0, motionEvent, i6);
            E e4 = this.mGapWorker;
            if (e4 != null && (releaseHorizontalGlow != 0 || releaseVerticalGlow != 0)) {
                e4.a(this, releaseHorizontalGlow, releaseVerticalGlow);
            }
            stopNestedScroll(i6);
        }
    }

    private void onPointerUp(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mScrollPointerId) {
            int i4 = actionIndex == 0 ? 1 : 0;
            this.mScrollPointerId = motionEvent.getPointerId(i4);
            int x4 = (int) (motionEvent.getX(i4) + 0.5f);
            this.mLastTouchX = x4;
            this.mInitialTouchX = x4;
            int y4 = (int) (motionEvent.getY(i4) + 0.5f);
            this.mLastTouchY = y4;
            this.mInitialTouchY = y4;
        }
    }

    private boolean predictiveItemAnimationsEnabled() {
        return this.mItemAnimator != null && this.mLayout.supportsPredictiveItemAnimations();
    }

    private void processAdapterUpdatesAndSetAnimationFlags() {
        boolean z4;
        boolean z5 = false;
        if (this.mDataSetHasChangedAfterLayout) {
            C0259b c0259b = this.mAdapterHelper;
            c0259b.k(c0259b.f3923b);
            c0259b.k(c0259b.f3924c);
            c0259b.f3927f = 0;
            if (this.mDispatchItemsChangedEvent) {
                this.mLayout.onItemsChanged(this);
            }
        }
        if (predictiveItemAnimationsEnabled()) {
            this.mAdapterHelper.j();
        } else {
            this.mAdapterHelper.c();
        }
        boolean z6 = this.mItemsAddedOrRemoved || this.mItemsChanged;
        this.mState.f3767j = this.mFirstLayoutComplete && this.mItemAnimator != null && ((z4 = this.mDataSetHasChangedAfterLayout) || z6 || this.mLayout.mRequestedSimpleAnimations) && (!z4 || this.mAdapter.hasStableIds());
        A0 a02 = this.mState;
        if (a02.f3767j && z6 && !this.mDataSetHasChangedAfterLayout && predictiveItemAnimationsEnabled()) {
            z5 = true;
        }
        a02.f3768k = z5;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void pullGlows(float r7, float r8, float r9, float r10) {
        /*
            r6 = this;
            r0 = 0
            int r1 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            r2 = 1065353216(0x3f800000, float:1.0)
            r3 = 1
            if (r1 >= 0) goto L21
            r6.ensureLeftGlow()
            android.widget.EdgeEffect r1 = r6.mLeftGlow
            float r4 = -r8
            int r5 = r6.getWidth()
            float r5 = (float) r5
            float r4 = r4 / r5
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            float r9 = r2 - r9
            N.c.c(r1, r4, r9)
        L1f:
            r9 = r3
            goto L3c
        L21:
            int r1 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r1 <= 0) goto L3b
            r6.ensureRightGlow()
            android.widget.EdgeEffect r1 = r6.mRightGlow
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r4 = r8 / r4
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            N.c.c(r1, r4, r9)
            goto L1f
        L3b:
            r9 = 0
        L3c:
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r1 >= 0) goto L56
            r6.ensureTopGlow()
            android.widget.EdgeEffect r9 = r6.mTopGlow
            float r1 = -r10
            int r2 = r6.getHeight()
            float r2 = (float) r2
            float r1 = r1 / r2
            int r2 = r6.getWidth()
            float r2 = (float) r2
            float r7 = r7 / r2
            N.c.c(r9, r1, r7)
            goto L72
        L56:
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r1 <= 0) goto L71
            r6.ensureBottomGlow()
            android.widget.EdgeEffect r9 = r6.mBottomGlow
            int r1 = r6.getHeight()
            float r1 = (float) r1
            float r1 = r10 / r1
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r7 = r7 / r4
            float r2 = r2 - r7
            N.c.c(r9, r1, r2)
            goto L72
        L71:
            r3 = r9
        L72:
            if (r3 != 0) goto L7c
            int r7 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r7 != 0) goto L7c
            int r7 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r7 == 0) goto L81
        L7c:
            java.util.WeakHashMap r7 = androidx.core.view.J.f3079a
            androidx.core.view.C0186x.i(r6)
        L81:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.pullGlows(float, float, float, float):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:122:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void recoverFocusFromState() {
        /*
            r6 = this;
            boolean r0 = r6.mPreserveFocusAfterLayout
            if (r0 == 0) goto Lae
            androidx.recyclerview.widget.Z r0 = r6.mAdapter
            if (r0 == 0) goto Lae
            boolean r0 = r6.hasFocus()
            if (r0 == 0) goto Lae
            int r0 = r6.getDescendantFocusability()
            r1 = 393216(0x60000, float:5.51013E-40)
            if (r0 == r1) goto Lae
            int r0 = r6.getDescendantFocusability()
            r1 = 131072(0x20000, float:1.83671E-40)
            if (r0 != r1) goto L26
            boolean r0 = r6.isFocused()
            if (r0 == 0) goto L26
            goto Lae
        L26:
            boolean r0 = r6.isFocused()
            if (r0 != 0) goto L55
            android.view.View r0 = r6.getFocusedChild()
            boolean r1 = androidx.recyclerview.widget.RecyclerView.IGNORE_DETACHED_FOCUSED_CHILD
            if (r1 == 0) goto L4c
            android.view.ViewParent r1 = r0.getParent()
            if (r1 == 0) goto L40
            boolean r1 = r0.hasFocus()
            if (r1 != 0) goto L4c
        L40:
            androidx.recyclerview.widget.g r0 = r6.mChildHelper
            int r0 = r0.e()
            if (r0 != 0) goto L55
            r6.requestFocus()
            return
        L4c:
            androidx.recyclerview.widget.g r1 = r6.mChildHelper
            boolean r0 = r1.j(r0)
            if (r0 != 0) goto L55
            return
        L55:
            androidx.recyclerview.widget.A0 r0 = r6.mState
            long r0 = r0.f3770m
            r2 = -1
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            r1 = 0
            if (r0 == 0) goto L71
            androidx.recyclerview.widget.Z r0 = r6.mAdapter
            boolean r0 = r0.hasStableIds()
            if (r0 == 0) goto L71
            androidx.recyclerview.widget.A0 r0 = r6.mState
            long r4 = r0.f3770m
            androidx.recyclerview.widget.E0 r0 = r6.findViewHolderForItemId(r4)
            goto L72
        L71:
            r0 = r1
        L72:
            if (r0 == 0) goto L87
            androidx.recyclerview.widget.g r4 = r6.mChildHelper
            android.view.View r0 = r0.itemView
            boolean r4 = r4.j(r0)
            if (r4 != 0) goto L87
            boolean r4 = r0.hasFocusable()
            if (r4 != 0) goto L85
            goto L87
        L85:
            r1 = r0
            goto L93
        L87:
            androidx.recyclerview.widget.g r0 = r6.mChildHelper
            int r0 = r0.e()
            if (r0 <= 0) goto L93
            android.view.View r1 = r6.findNextViewToFocus()
        L93:
            if (r1 == 0) goto Lae
            androidx.recyclerview.widget.A0 r6 = r6.mState
            int r6 = r6.f3771n
            long r4 = (long) r6
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r0 == 0) goto Lab
            android.view.View r6 = r1.findViewById(r6)
            if (r6 == 0) goto Lab
            boolean r0 = r6.isFocusable()
            if (r0 == 0) goto Lab
            r1 = r6
        Lab:
            r1.requestFocus()
        Lae:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.recoverFocusFromState():void");
    }

    private void releaseGlows() {
        boolean z4;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z4 = this.mLeftGlow.isFinished();
        } else {
            z4 = false;
        }
        EdgeEffect edgeEffect2 = this.mTopGlow;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z4 |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mRightGlow;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z4 |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z4 |= this.mBottomGlow.isFinished();
        }
        if (z4) {
            WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
            C0186x.i(this);
        }
    }

    private int releaseHorizontalGlow(int i4, float f4) {
        float height = f4 / getHeight();
        float width = i4 / getWidth();
        EdgeEffect edgeEffect = this.mLeftGlow;
        float f5 = DECELERATION_RATE;
        if (edgeEffect == null || N.c.b(edgeEffect) == DECELERATION_RATE) {
            EdgeEffect edgeEffect2 = this.mRightGlow;
            if (edgeEffect2 != null && N.c.b(edgeEffect2) != DECELERATION_RATE) {
                if (canScrollHorizontally(1)) {
                    this.mRightGlow.onRelease();
                } else {
                    float c4 = N.c.c(this.mRightGlow, width, height);
                    if (N.c.b(this.mRightGlow) == DECELERATION_RATE) {
                        this.mRightGlow.onRelease();
                    }
                    f5 = c4;
                }
                invalidate();
            }
        } else {
            if (canScrollHorizontally(-1)) {
                this.mLeftGlow.onRelease();
            } else {
                float f6 = -N.c.c(this.mLeftGlow, -width, 1.0f - height);
                if (N.c.b(this.mLeftGlow) == DECELERATION_RATE) {
                    this.mLeftGlow.onRelease();
                }
                f5 = f6;
            }
            invalidate();
        }
        return Math.round(f5 * getWidth());
    }

    private int releaseVerticalGlow(int i4, float f4) {
        float width = f4 / getWidth();
        float height = i4 / getHeight();
        EdgeEffect edgeEffect = this.mTopGlow;
        float f5 = DECELERATION_RATE;
        if (edgeEffect == null || N.c.b(edgeEffect) == DECELERATION_RATE) {
            EdgeEffect edgeEffect2 = this.mBottomGlow;
            if (edgeEffect2 != null && N.c.b(edgeEffect2) != DECELERATION_RATE) {
                if (canScrollVertically(1)) {
                    this.mBottomGlow.onRelease();
                } else {
                    float c4 = N.c.c(this.mBottomGlow, height, 1.0f - width);
                    if (N.c.b(this.mBottomGlow) == DECELERATION_RATE) {
                        this.mBottomGlow.onRelease();
                    }
                    f5 = c4;
                }
                invalidate();
            }
        } else {
            if (canScrollVertically(-1)) {
                this.mTopGlow.onRelease();
            } else {
                float f6 = -N.c.c(this.mTopGlow, -height, width);
                if (N.c.b(this.mTopGlow) == DECELERATION_RATE) {
                    this.mTopGlow.onRelease();
                }
                f5 = f6;
            }
            invalidate();
        }
        return Math.round(f5 * getHeight());
    }

    private void requestChildOnScreen(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.mTempRect.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof C0282m0) {
            C0282m0 c0282m0 = (C0282m0) layoutParams;
            if (!c0282m0.f3985c) {
                Rect rect = c0282m0.f3984b;
                Rect rect2 = this.mTempRect;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.mTempRect);
            offsetRectIntoDescendantCoords(view, this.mTempRect);
        }
        this.mLayout.requestChildRectangleOnScreen(this, view, this.mTempRect, !this.mFirstLayoutComplete, view2 == null);
    }

    private void resetFocusInfo() {
        A0 a02 = this.mState;
        a02.f3770m = -1L;
        a02.f3769l = -1;
        a02.f3771n = -1;
    }

    private void resetScroll() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        stopNestedScroll(0);
        releaseGlows();
    }

    private void saveFocusInfo() {
        View focusedChild = (this.mPreserveFocusAfterLayout && hasFocus() && this.mAdapter != null) ? getFocusedChild() : null;
        E0 findContainingViewHolder = focusedChild != null ? findContainingViewHolder(focusedChild) : null;
        if (findContainingViewHolder == null) {
            resetFocusInfo();
            return;
        }
        this.mState.f3770m = this.mAdapter.hasStableIds() ? findContainingViewHolder.mItemId : -1L;
        A0 a02 = this.mState;
        int i4 = -1;
        if (!this.mDataSetHasChangedAfterLayout) {
            if (findContainingViewHolder.isRemoved()) {
                i4 = findContainingViewHolder.mOldPosition;
            } else {
                RecyclerView recyclerView = findContainingViewHolder.mOwnerRecyclerView;
                if (recyclerView != null) {
                    i4 = recyclerView.getAdapterPositionInRecyclerView(findContainingViewHolder);
                }
            }
        }
        a02.f3769l = i4;
        this.mState.f3771n = getDeepestFocusedViewWithId(findContainingViewHolder.itemView);
    }

    private void setAdapterInternal(Z z4, boolean z5, boolean z6) {
        Z z7 = this.mAdapter;
        if (z7 != null) {
            z7.unregisterAdapterDataObserver(this.mObserver);
            this.mAdapter.onDetachedFromRecyclerView();
        }
        if (!z5 || z6) {
            removeAndRecycleViews();
        }
        C0259b c0259b = this.mAdapterHelper;
        c0259b.k(c0259b.f3923b);
        c0259b.k(c0259b.f3924c);
        c0259b.f3927f = 0;
        Z z8 = this.mAdapter;
        this.mAdapter = z4;
        if (z4 != null) {
            z4.registerAdapterDataObserver(this.mObserver);
            z4.onAttachedToRecyclerView(this);
        }
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 != null) {
            abstractC0280l0.onAdapterChanged();
        }
        C0295t0 c0295t0 = this.mRecycler;
        Z z9 = this.mAdapter;
        c0295t0.f4021a.clear();
        c0295t0.g();
        c0295t0.f(z8, true);
        C0293s0 c4 = c0295t0.c();
        if (z8 != null) {
            c4.mAttachCountForClearing--;
        }
        if (!z5 && c4.mAttachCountForClearing == 0) {
            c4.clear();
        }
        if (z9 != null) {
            c4.mAttachCountForClearing++;
        } else {
            c4.getClass();
        }
        c0295t0.e();
        this.mState.f3763f = true;
    }

    public static void setDebugAssertionsEnabled(boolean z4) {
        sDebugAssertionsEnabled = z4;
    }

    public static void setVerboseLoggingEnabled(boolean z4) {
        sVerboseLoggingEnabled = z4;
    }

    private boolean shouldAbsorb(EdgeEffect edgeEffect, int i4, int i5) {
        if (i4 > 0) {
            return true;
        }
        return getSplineFlingDistance(-i4) < N.c.b(edgeEffect) * ((float) i5);
    }

    private void startNestedScrollForType(int i4) {
        boolean canScrollHorizontally = this.mLayout.canScrollHorizontally();
        int i5 = canScrollHorizontally;
        if (this.mLayout.canScrollVertically()) {
            i5 = (canScrollHorizontally ? 1 : 0) | 2;
        }
        startNestedScroll(i5, i4);
    }

    private boolean stopGlowAnimations(MotionEvent motionEvent) {
        boolean z4;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || N.c.b(edgeEffect) == DECELERATION_RATE || canScrollHorizontally(-1)) {
            z4 = false;
        } else {
            N.c.c(this.mLeftGlow, DECELERATION_RATE, 1.0f - (motionEvent.getY() / getHeight()));
            z4 = true;
        }
        EdgeEffect edgeEffect2 = this.mRightGlow;
        if (edgeEffect2 != null && N.c.b(edgeEffect2) != DECELERATION_RATE && !canScrollHorizontally(1)) {
            N.c.c(this.mRightGlow, DECELERATION_RATE, motionEvent.getY() / getHeight());
            z4 = true;
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && N.c.b(edgeEffect3) != DECELERATION_RATE && !canScrollVertically(-1)) {
            N.c.c(this.mTopGlow, DECELERATION_RATE, motionEvent.getX() / getWidth());
            z4 = true;
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 == null || N.c.b(edgeEffect4) == DECELERATION_RATE || canScrollVertically(1)) {
            return z4;
        }
        N.c.c(this.mBottomGlow, DECELERATION_RATE, 1.0f - (motionEvent.getX() / getWidth()));
        return true;
    }

    private void stopScrollersInternal() {
        O o4;
        D0 d02 = this.mViewFlinger;
        d02.f3788j.removeCallbacks(d02);
        d02.f3784f.abortAnimation();
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 == null || (o4 = abstractC0280l0.mSmoothScroller) == null) {
            return;
        }
        o4.i();
    }

    public void absorbGlows(int i4, int i5) {
        if (i4 < 0) {
            ensureLeftGlow();
            if (this.mLeftGlow.isFinished()) {
                this.mLeftGlow.onAbsorb(-i4);
            }
        } else if (i4 > 0) {
            ensureRightGlow();
            if (this.mRightGlow.isFinished()) {
                this.mRightGlow.onAbsorb(i4);
            }
        }
        if (i5 < 0) {
            ensureTopGlow();
            if (this.mTopGlow.isFinished()) {
                this.mTopGlow.onAbsorb(-i5);
            }
        } else if (i5 > 0) {
            ensureBottomGlow();
            if (this.mBottomGlow.isFinished()) {
                this.mBottomGlow.onAbsorb(i5);
            }
        }
        if (i4 == 0 && i5 == 0) {
            return;
        }
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        C0186x.i(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList arrayList, int i4, int i5) {
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 != null) {
            abstractC0280l0.getClass();
        }
        super.addFocusables(arrayList, i4, i5);
    }

    public void addItemDecoration(AbstractC0274i0 abstractC0274i0, int i4) {
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 != null) {
            abstractC0280l0.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
        }
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i4 < 0) {
            this.mItemDecorations.add(abstractC0274i0);
        } else {
            this.mItemDecorations.add(i4, abstractC0274i0);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void addOnChildAttachStateChangeListener(InterfaceC0284n0 interfaceC0284n0) {
        if (this.mOnChildAttachStateListeners == null) {
            this.mOnChildAttachStateListeners = new ArrayList();
        }
        this.mOnChildAttachStateListeners.add(interfaceC0284n0);
    }

    public void addOnItemTouchListener(InterfaceC0288p0 interfaceC0288p0) {
        this.mOnItemTouchListeners.add(interfaceC0288p0);
    }

    public void addOnScrollListener(AbstractC0290q0 abstractC0290q0) {
        if (this.mScrollListeners == null) {
            this.mScrollListeners = new ArrayList();
        }
        this.mScrollListeners.add(abstractC0290q0);
    }

    public void addRecyclerListener(InterfaceC0297u0 interfaceC0297u0) {
        if (!(interfaceC0297u0 != null)) {
            throw new IllegalArgumentException("'listener' arg cannot be null.");
        }
        this.mRecyclerListeners.add(interfaceC0297u0);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void animateAppearance(androidx.recyclerview.widget.E0 r8, androidx.recyclerview.widget.C0270g0 r9, androidx.recyclerview.widget.C0270g0 r10) {
        /*
            r7 = this;
            r0 = 0
            r8.setIsRecyclable(r0)
            androidx.recyclerview.widget.h0 r0 = r7.mItemAnimator
            r1 = r0
            androidx.recyclerview.widget.n r1 = (androidx.recyclerview.widget.C0283n) r1
            if (r9 == 0) goto L24
            r1.getClass()
            int r3 = r9.f3939a
            int r5 = r10.f3939a
            if (r3 != r5) goto L1a
            int r0 = r9.f3940b
            int r2 = r10.f3940b
            if (r0 == r2) goto L24
        L1a:
            int r4 = r9.f3940b
            int r6 = r10.f3940b
            r2 = r8
            boolean r8 = r1.g(r2, r3, r4, r5, r6)
            goto L33
        L24:
            r1.l(r8)
            android.view.View r9 = r8.itemView
            r10 = 0
            r9.setAlpha(r10)
            java.util.ArrayList r9 = r1.f3990i
            r9.add(r8)
            r8 = 1
        L33:
            if (r8 == 0) goto L38
            r7.postAnimationRunner()
        L38:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.animateAppearance(androidx.recyclerview.widget.E0, androidx.recyclerview.widget.g0, androidx.recyclerview.widget.g0):void");
    }

    public void animateDisappearance(E0 e02, C0270g0 c0270g0, C0270g0 c0270g02) {
        boolean z4;
        addAnimatingView(e02);
        e02.setIsRecyclable(false);
        C0283n c0283n = (C0283n) this.mItemAnimator;
        c0283n.getClass();
        int i4 = c0270g0.f3939a;
        int i5 = c0270g0.f3940b;
        View view = e02.itemView;
        int left = c0270g02 == null ? view.getLeft() : c0270g02.f3939a;
        int top = c0270g02 == null ? view.getTop() : c0270g02.f3940b;
        if (e02.isRemoved() || (i4 == left && i5 == top)) {
            c0283n.l(e02);
            c0283n.f3989h.add(e02);
            z4 = true;
        } else {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            z4 = c0283n.g(e02, i4, i5, left, top);
        }
        if (z4) {
            postAnimationRunner();
        }
    }

    public void assertInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            return;
        }
        if (str != null) {
            throw new IllegalStateException(C0265e.a(this, C1395a.a(str)));
        }
        throw new IllegalStateException(C0265e.a(this, new StringBuilder("Cannot call this method unless RecyclerView is computing a layout or scrolling")));
    }

    public void assertNotInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException(C0265e.a(this, new StringBuilder("Cannot call this method while RecyclerView is computing a layout or scrolling")));
        } else if (this.mDispatchScrollCounter > 0) {
            Log.w(TAG, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(C0265e.a(this, new StringBuilder(""))));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean canReuseUpdatedViewHolder(androidx.recyclerview.widget.E0 r4) {
        /*
            r3 = this;
            androidx.recyclerview.widget.h0 r3 = r3.mItemAnimator
            r0 = 1
            if (r3 == 0) goto L2d
            java.util.List r1 = r4.getUnmodifiedPayloads()
            androidx.recyclerview.widget.n r3 = (androidx.recyclerview.widget.C0283n) r3
            r3.getClass()
            boolean r1 = r1.isEmpty()
            r2 = 0
            if (r1 == 0) goto L28
            boolean r3 = r3.f3988g
            if (r3 == 0) goto L22
            boolean r3 = r4.isInvalid()
            if (r3 == 0) goto L20
            goto L22
        L20:
            r3 = r2
            goto L23
        L22:
            r3 = r0
        L23:
            if (r3 == 0) goto L26
            goto L28
        L26:
            r3 = r2
            goto L29
        L28:
            r3 = r0
        L29:
            if (r3 == 0) goto L2c
            goto L2d
        L2c:
            r0 = r2
        L2d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.canReuseUpdatedViewHolder(androidx.recyclerview.widget.E0):boolean");
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0282m0) && this.mLayout.checkLayoutParams((C0282m0) layoutParams);
    }

    public void clearOldPositions() {
        int h4 = this.mChildHelper.h();
        for (int i4 = 0; i4 < h4; i4++) {
            E0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i4));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.mOldPosition = -1;
                childViewHolderInt.mPreLayoutPosition = -1;
            }
        }
        C0295t0 c0295t0 = this.mRecycler;
        ArrayList arrayList = c0295t0.f4023c;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            E0 e02 = (E0) arrayList.get(i5);
            e02.mOldPosition = -1;
            e02.mPreLayoutPosition = -1;
        }
        ArrayList arrayList2 = c0295t0.f4021a;
        int size2 = arrayList2.size();
        for (int i6 = 0; i6 < size2; i6++) {
            E0 e03 = (E0) arrayList2.get(i6);
            e03.mOldPosition = -1;
            e03.mPreLayoutPosition = -1;
        }
        ArrayList arrayList3 = c0295t0.f4022b;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            for (int i7 = 0; i7 < size3; i7++) {
                E0 e04 = (E0) c0295t0.f4022b.get(i7);
                e04.mOldPosition = -1;
                e04.mPreLayoutPosition = -1;
            }
        }
    }

    public void clearOnChildAttachStateChangeListeners() {
        List list = this.mOnChildAttachStateListeners;
        if (list != null) {
            list.clear();
        }
    }

    public void clearOnScrollListeners() {
        List list = this.mScrollListeners;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 != null && abstractC0280l0.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollExtent(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 != null && abstractC0280l0.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollOffset(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 != null && abstractC0280l0.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollRange(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 != null && abstractC0280l0.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollExtent(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 != null && abstractC0280l0.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollOffset(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 != null && abstractC0280l0.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollRange(this.mState);
        }
        return 0;
    }

    public void considerReleasingGlowsOnScroll(int i4, int i5) {
        boolean z4;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished() || i4 <= 0) {
            z4 = false;
        } else {
            this.mLeftGlow.onRelease();
            z4 = this.mLeftGlow.isFinished();
        }
        EdgeEffect edgeEffect2 = this.mRightGlow;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i4 < 0) {
            this.mRightGlow.onRelease();
            z4 |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i5 > 0) {
            this.mTopGlow.onRelease();
            z4 |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i5 < 0) {
            this.mBottomGlow.onRelease();
            z4 |= this.mBottomGlow.isFinished();
        }
        if (z4) {
            WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
            C0186x.i(this);
        }
    }

    public int consumeFlingInHorizontalStretch(int i4) {
        return consumeFlingInStretch(i4, this.mLeftGlow, this.mRightGlow, getWidth());
    }

    public int consumeFlingInVerticalStretch(int i4) {
        return consumeFlingInStretch(i4, this.mTopGlow, this.mBottomGlow, getHeight());
    }

    public void consumePendingUpdateOperations() {
        if (!this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout) {
            Trace.beginSection(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
            dispatchLayout();
            Trace.endSection();
        } else if (this.mAdapterHelper.g()) {
            C0259b c0259b = this.mAdapterHelper;
            int i4 = c0259b.f3927f;
            if ((i4 & 4) != 0) {
                if (!((i4 & 11) != 0)) {
                    Trace.beginSection(TRACE_HANDLE_ADAPTER_UPDATES_TAG);
                    startInterceptRequestLayout();
                    onEnterLayoutOrScroll();
                    this.mAdapterHelper.j();
                    if (!this.mLayoutWasDefered) {
                        if (hasUpdatedView()) {
                            dispatchLayout();
                        } else {
                            this.mAdapterHelper.b();
                        }
                    }
                    stopInterceptRequestLayout(true);
                    onExitLayoutOrScroll();
                    Trace.endSection();
                    return;
                }
            }
            if (c0259b.g()) {
                Trace.beginSection(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
                dispatchLayout();
                Trace.endSection();
            }
        }
    }

    public void defaultOnMeasure(int i4, int i5) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        setMeasuredDimension(AbstractC0280l0.chooseSize(i4, paddingRight, C0186x.d(this)), AbstractC0280l0.chooseSize(i5, getPaddingBottom() + getPaddingTop(), C0186x.c(this)));
    }

    public void dispatchChildAttached(View view) {
        E0 childViewHolderInt = getChildViewHolderInt(view);
        onChildAttachedToWindow(view);
        Z z4 = this.mAdapter;
        if (z4 != null && childViewHolderInt != null) {
            z4.getClass();
        }
        List list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                ((InterfaceC0284n0) this.mOnChildAttachStateListeners.get(size)).onChildViewAttachedToWindow(view);
            }
        }
    }

    public void dispatchChildDetached(View view) {
        E0 childViewHolderInt = getChildViewHolderInt(view);
        onChildDetachedFromWindow(view);
        Z z4 = this.mAdapter;
        if (z4 != null && childViewHolderInt != null) {
            z4.getClass();
        }
        List list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                ((InterfaceC0284n0) this.mOnChildAttachStateListeners.get(size)).onChildViewDetachedFromWindow(view);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int i4 = 0;
        if (getLayoutManager().canScrollVertically()) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 92 || keyCode == 93) {
                int measuredHeight = getMeasuredHeight();
                if (keyCode == 93) {
                    smoothScrollBy(0, measuredHeight, null, Integer.MIN_VALUE);
                } else {
                    smoothScrollBy(0, -measuredHeight, null, Integer.MIN_VALUE);
                }
                return true;
            } else if (keyCode == 122 || keyCode == 123) {
                boolean isLayoutReversed = getLayoutManager().isLayoutReversed();
                if (keyCode == 122) {
                    if (isLayoutReversed) {
                        i4 = getAdapter().getItemCount();
                    }
                } else if (!isLayoutReversed) {
                    i4 = getAdapter().getItemCount();
                }
                smoothScrollToPosition(i4);
                return true;
            }
        } else if (getLayoutManager().canScrollHorizontally()) {
            int keyCode2 = keyEvent.getKeyCode();
            if (keyCode2 == 92 || keyCode2 == 93) {
                int measuredWidth = getMeasuredWidth();
                if (keyCode2 == 93) {
                    smoothScrollBy(measuredWidth, 0, null, Integer.MIN_VALUE);
                } else {
                    smoothScrollBy(-measuredWidth, 0, null, Integer.MIN_VALUE);
                }
                return true;
            } else if (keyCode2 == 122 || keyCode2 == 123) {
                boolean isLayoutReversed2 = getLayoutManager().isLayoutReversed();
                if (keyCode2 == 122) {
                    if (isLayoutReversed2) {
                        i4 = getAdapter().getItemCount();
                    }
                } else if (!isLayoutReversed2) {
                    i4 = getAdapter().getItemCount();
                }
                smoothScrollToPosition(i4);
                return true;
            }
        }
        return false;
    }

    public void dispatchLayout() {
        if (this.mAdapter == null) {
            Log.w(TAG, "No adapter attached; skipping layout");
        } else if (this.mLayout == null) {
            Log.e(TAG, "No layout manager attached; skipping layout");
        } else {
            boolean z4 = false;
            this.mState.f3766i = false;
            boolean z5 = this.mLastAutoMeasureSkippedDueToExact && !(this.mLastAutoMeasureNonExactMeasuredWidth == getWidth() && this.mLastAutoMeasureNonExactMeasuredHeight == getHeight());
            this.mLastAutoMeasureNonExactMeasuredWidth = 0;
            this.mLastAutoMeasureNonExactMeasuredHeight = 0;
            this.mLastAutoMeasureSkippedDueToExact = false;
            if (this.mState.f3761d == 1) {
                dispatchLayoutStep1();
                this.mLayout.setExactMeasureSpecsFrom(this);
                dispatchLayoutStep2();
            } else {
                C0259b c0259b = this.mAdapterHelper;
                if (!c0259b.f3924c.isEmpty() && !c0259b.f3923b.isEmpty()) {
                    z4 = true;
                }
                if (z4 || z5 || this.mLayout.getWidth() != getWidth() || this.mLayout.getHeight() != getHeight()) {
                    this.mLayout.setExactMeasureSpecsFrom(this);
                    dispatchLayoutStep2();
                } else {
                    this.mLayout.setExactMeasureSpecsFrom(this);
                }
            }
            dispatchLayoutStep3();
        }
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f4, float f5, boolean z4) {
        return getScrollingChildHelper().a(f4, f5, z4);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f4, float f5) {
        return getScrollingChildHelper().b(f4, f5);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i4, int i5, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i4, i5, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i4, int i5, int i6, int i7, int[] iArr) {
        return getScrollingChildHelper().e(i4, i5, i6, i7, iArr, 0, null);
    }

    public void dispatchOnScrollStateChanged(int i4) {
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 != null) {
            abstractC0280l0.onScrollStateChanged(i4);
        }
        onScrollStateChanged(i4);
        AbstractC0290q0 abstractC0290q0 = this.mScrollListener;
        if (abstractC0290q0 != null) {
            abstractC0290q0.onScrollStateChanged(this, i4);
        }
        List list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                ((AbstractC0290q0) this.mScrollListeners.get(size)).onScrollStateChanged(this, i4);
            }
        }
    }

    public void dispatchOnScrolled(int i4, int i5) {
        this.mDispatchScrollCounter++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i4, scrollY - i5);
        onScrolled(i4, i5);
        AbstractC0290q0 abstractC0290q0 = this.mScrollListener;
        if (abstractC0290q0 != null) {
            abstractC0290q0.onScrolled(this, i4, i5);
        }
        List list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                ((AbstractC0290q0) this.mScrollListeners.get(size)).onScrolled(this, i4, i5);
            }
        }
        this.mDispatchScrollCounter--;
    }

    public void dispatchPendingImportantForAccessibilityChanges() {
        int i4;
        for (int size = this.mPendingAccessibilityImportanceChange.size() - 1; size >= 0; size--) {
            E0 e02 = (E0) this.mPendingAccessibilityImportanceChange.get(size);
            if (e02.itemView.getParent() == this && !e02.shouldIgnore() && (i4 = e02.mPendingAccessibilityState) != -1) {
                WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
                C0186x.o(e02.itemView, i4);
                e02.mPendingAccessibilityState = -1;
            }
        }
        this.mPendingAccessibilityImportanceChange.clear();
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSaveInstanceState(SparseArray sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z4;
        super.draw(canvas);
        int size = this.mItemDecorations.size();
        boolean z5 = false;
        for (int i4 = 0; i4 < size; i4++) {
            ((AbstractC0274i0) this.mItemDecorations.get(i4)).onDrawOver(canvas, this);
        }
        EdgeEffect edgeEffect = this.mLeftGlow;
        boolean z6 = true;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z4 = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.mClipToPadding ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, DECELERATION_RATE);
            EdgeEffect edgeEffect2 = this.mLeftGlow;
            z4 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int save2 = canvas.save();
            if (this.mClipToPadding) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.mTopGlow;
            z4 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(save2);
        }
        EdgeEffect edgeEffect5 = this.mRightGlow;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.mClipToPadding ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            EdgeEffect edgeEffect6 = this.mRightGlow;
            z4 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(save3);
        }
        EdgeEffect edgeEffect7 = this.mBottomGlow;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.mClipToPadding) {
                canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.mBottomGlow;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z5 = true;
            }
            z4 |= z5;
            canvas.restoreToCount(save4);
        }
        if (z4 || this.mItemAnimator == null || this.mItemDecorations.size() <= 0 || !this.mItemAnimator.f()) {
            z6 = z4;
        }
        if (z6) {
            WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
            C0186x.i(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j4) {
        return super.drawChild(canvas, view, j4);
    }

    public void ensureBottomGlow() {
        if (this.mBottomGlow != null) {
            return;
        }
        EdgeEffect createEdgeEffect = this.mEdgeEffectFactory.createEdgeEffect(this, 3);
        this.mBottomGlow = createEdgeEffect;
        if (this.mClipToPadding) {
            createEdgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            createEdgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void ensureLeftGlow() {
        if (this.mLeftGlow != null) {
            return;
        }
        EdgeEffect createEdgeEffect = this.mEdgeEffectFactory.createEdgeEffect(this, 0);
        this.mLeftGlow = createEdgeEffect;
        if (this.mClipToPadding) {
            createEdgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            createEdgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public void ensureRightGlow() {
        if (this.mRightGlow != null) {
            return;
        }
        EdgeEffect createEdgeEffect = this.mEdgeEffectFactory.createEdgeEffect(this, 2);
        this.mRightGlow = createEdgeEffect;
        if (this.mClipToPadding) {
            createEdgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            createEdgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public void ensureTopGlow() {
        if (this.mTopGlow != null) {
            return;
        }
        EdgeEffect createEdgeEffect = this.mEdgeEffectFactory.createEdgeEffect(this, 1);
        this.mTopGlow = createEdgeEffect;
        if (this.mClipToPadding) {
            createEdgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            createEdgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public String exceptionLabel() {
        return " " + super.toString() + ", adapter:" + this.mAdapter + ", layout:" + this.mLayout + ", context:" + getContext();
    }

    public final void fillRemainingScrollValues(A0 a02) {
        if (getScrollState() != 2) {
            a02.getClass();
            a02.f3772o = 0;
            return;
        }
        OverScroller overScroller = this.mViewFlinger.f3784f;
        overScroller.getFinalX();
        overScroller.getCurrX();
        a02.getClass();
        a02.f3772o = overScroller.getFinalY() - overScroller.getCurrY();
    }

    public View findChildViewUnder(float f4, float f5) {
        for (int e4 = this.mChildHelper.e() - 1; e4 >= 0; e4--) {
            View d4 = this.mChildHelper.d(e4);
            float translationX = d4.getTranslationX();
            float translationY = d4.getTranslationY();
            if (f4 >= d4.getLeft() + translationX && f4 <= d4.getRight() + translationX && f5 >= d4.getTop() + translationY && f5 <= d4.getBottom() + translationY) {
                return d4;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:?, code lost:
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View findContainingItemView(android.view.View r3) {
        /*
            r2 = this;
            android.view.ViewParent r0 = r3.getParent()
        L4:
            if (r0 == 0) goto L14
            if (r0 == r2) goto L14
            boolean r1 = r0 instanceof android.view.View
            if (r1 == 0) goto L14
            r3 = r0
            android.view.View r3 = (android.view.View) r3
            android.view.ViewParent r0 = r3.getParent()
            goto L4
        L14:
            if (r0 != r2) goto L17
            goto L18
        L17:
            r3 = 0
        L18:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.findContainingItemView(android.view.View):android.view.View");
    }

    public E0 findContainingViewHolder(View view) {
        View findContainingItemView = findContainingItemView(view);
        if (findContainingItemView == null) {
            return null;
        }
        return getChildViewHolder(findContainingItemView);
    }

    public E0 findViewHolderForAdapterPosition(int i4) {
        E0 e02 = null;
        if (this.mDataSetHasChangedAfterLayout) {
            return null;
        }
        int h4 = this.mChildHelper.h();
        for (int i5 = 0; i5 < h4; i5++) {
            E0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i5));
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && getAdapterPositionInRecyclerView(childViewHolderInt) == i4) {
                if (!this.mChildHelper.j(childViewHolderInt.itemView)) {
                    return childViewHolderInt;
                }
                e02 = childViewHolderInt;
            }
        }
        return e02;
    }

    public E0 findViewHolderForItemId(long j4) {
        Z z4 = this.mAdapter;
        E0 e02 = null;
        if (z4 != null && z4.hasStableIds()) {
            int h4 = this.mChildHelper.h();
            for (int i4 = 0; i4 < h4; i4++) {
                E0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i4));
                if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && childViewHolderInt.mItemId == j4) {
                    if (!this.mChildHelper.j(childViewHolderInt.itemView)) {
                        return childViewHolderInt;
                    }
                    e02 = childViewHolderInt;
                }
            }
        }
        return e02;
    }

    public E0 findViewHolderForLayoutPosition(int i4) {
        return findViewHolderForPosition(i4, false);
    }

    @Deprecated
    public E0 findViewHolderForPosition(int i4) {
        return findViewHolderForPosition(i4, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:340:0x01f6, code lost:
        if (r2 < r12) goto L104;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x00cb A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:250:0x00ed A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:257:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:347:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:351:0x020d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:357:0x0232  */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean fling(int r19, int r20) {
        /*
            Method dump skipped, instructions count: 564
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.fling(int, int):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i4) {
        View view2;
        boolean z4;
        this.mLayout.getClass();
        boolean z5 = (this.mAdapter == null || this.mLayout == null || isComputingLayout() || this.mLayoutSuppressed) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z5 && (i4 == 2 || i4 == 1)) {
            if (this.mLayout.canScrollVertically()) {
                int i5 = i4 == 2 ? 130 : 33;
                z4 = focusFinder.findNextFocus(this, view, i5) == null;
                if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                    i4 = i5;
                }
            } else {
                z4 = false;
            }
            if (!z4 && this.mLayout.canScrollHorizontally()) {
                RecyclerView recyclerView = this.mLayout.mRecyclerView;
                WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
                int i6 = (C0187y.c(recyclerView) == 1) ^ (i4 == 2) ? 66 : 17;
                boolean z6 = focusFinder.findNextFocus(this, view, i6) == null;
                if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                    i4 = i6;
                }
                z4 = z6;
            }
            if (z4) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                this.mLayout.onFocusSearchFailed(view, i4, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            }
            view2 = focusFinder.findNextFocus(this, view, i4);
        } else {
            View findNextFocus = focusFinder.findNextFocus(this, view, i4);
            if (findNextFocus == null && z5) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                view2 = this.mLayout.onFocusSearchFailed(view, i4, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            } else {
                view2 = findNextFocus;
            }
        }
        if (view2 == null || view2.hasFocusable()) {
            return isPreferredNextFocus(view, view2, i4) ? view2 : super.focusSearch(view, i4);
        } else if (getFocusedChild() == null) {
            return super.focusSearch(view, i4);
        } else {
            requestChildOnScreen(view2, null);
            return view;
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 != null) {
            return abstractC0280l0.generateDefaultLayoutParams();
        }
        throw new IllegalStateException(C0265e.a(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 != null) {
            return abstractC0280l0.generateLayoutParams(getContext(), attributeSet);
        }
        throw new IllegalStateException(C0265e.a(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public Z getAdapter() {
        return this.mAdapter;
    }

    public int getAdapterPositionInRecyclerView(E0 e02) {
        if (!((e02.mFlags & 524) != 0) && e02.isBound()) {
            C0259b c0259b = this.mAdapterHelper;
            int i4 = e02.mPosition;
            ArrayList arrayList = c0259b.f3923b;
            int size = arrayList.size();
            for (int i5 = 0; i5 < size; i5++) {
                C0257a c0257a = (C0257a) arrayList.get(i5);
                int i6 = c0257a.f3918a;
                if (i6 != 1) {
                    if (i6 == 2) {
                        int i7 = c0257a.f3919b;
                        if (i7 <= i4) {
                            int i8 = c0257a.f3921d;
                            if (i7 + i8 <= i4) {
                                i4 -= i8;
                            }
                        } else {
                            continue;
                        }
                    } else if (i6 == 8) {
                        int i9 = c0257a.f3919b;
                        if (i9 == i4) {
                            i4 = c0257a.f3921d;
                        } else {
                            if (i9 < i4) {
                                i4--;
                            }
                            if (c0257a.f3921d <= i4) {
                                i4++;
                            }
                        }
                    }
                } else if (c0257a.f3919b <= i4) {
                    i4 += c0257a.f3921d;
                }
            }
            return i4;
        }
        return -1;
    }

    @Override // android.view.View
    public int getBaseline() {
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 != null) {
            abstractC0280l0.getClass();
            return -1;
        }
        return super.getBaseline();
    }

    public long getChangedHolderKey(E0 e02) {
        return this.mAdapter.hasStableIds() ? e02.mItemId : e02.mPosition;
    }

    public int getChildAdapterPosition(View view) {
        RecyclerView recyclerView;
        E0 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt == null || (recyclerView = childViewHolderInt.mOwnerRecyclerView) == null) {
            return -1;
        }
        return recyclerView.getAdapterPositionInRecyclerView(childViewHolderInt);
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i4, int i5) {
        return super.getChildDrawingOrder(i4, i5);
    }

    public long getChildItemId(View view) {
        E0 childViewHolderInt;
        Z z4 = this.mAdapter;
        if (z4 == null || !z4.hasStableIds() || (childViewHolderInt = getChildViewHolderInt(view)) == null) {
            return -1L;
        }
        return childViewHolderInt.mItemId;
    }

    public int getChildLayoutPosition(View view) {
        E0 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getLayoutPosition();
        }
        return -1;
    }

    @Deprecated
    public int getChildPosition(View view) {
        return getChildAdapterPosition(view);
    }

    public E0 getChildViewHolder(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return getChildViewHolderInt(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.mClipToPadding;
    }

    public G0 getCompatAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        getDecoratedBoundsWithMarginsInt(view, rect);
    }

    public C0264d0 getEdgeEffectFactory() {
        return this.mEdgeEffectFactory;
    }

    public AbstractC0272h0 getItemAnimator() {
        return this.mItemAnimator;
    }

    public Rect getItemDecorInsetsForChild(View view) {
        C0282m0 c0282m0 = (C0282m0) view.getLayoutParams();
        if (c0282m0.f3985c) {
            if (this.mState.f3764g && (c0282m0.b() || c0282m0.f3983a.isInvalid())) {
                return c0282m0.f3984b;
            }
            Rect rect = c0282m0.f3984b;
            rect.set(0, 0, 0, 0);
            int size = this.mItemDecorations.size();
            for (int i4 = 0; i4 < size; i4++) {
                this.mTempRect.set(0, 0, 0, 0);
                ((AbstractC0274i0) this.mItemDecorations.get(i4)).getItemOffsets(this.mTempRect, view, this);
                int i5 = rect.left;
                Rect rect2 = this.mTempRect;
                rect.left = i5 + rect2.left;
                rect.top += rect2.top;
                rect.right += rect2.right;
                rect.bottom += rect2.bottom;
            }
            c0282m0.f3985c = false;
            return rect;
        }
        return c0282m0.f3984b;
    }

    public AbstractC0274i0 getItemDecorationAt(int i4) {
        int itemDecorationCount = getItemDecorationCount();
        if (i4 < 0 || i4 >= itemDecorationCount) {
            throw new IndexOutOfBoundsException(i4 + " is an invalid index for size " + itemDecorationCount);
        }
        return (AbstractC0274i0) this.mItemDecorations.get(i4);
    }

    public int getItemDecorationCount() {
        return this.mItemDecorations.size();
    }

    public AbstractC0280l0 getLayoutManager() {
        return this.mLayout;
    }

    public int getMaxFlingVelocity() {
        return this.mMaxFlingVelocity;
    }

    public int getMinFlingVelocity() {
        return this.mMinFlingVelocity;
    }

    public long getNanoTime() {
        if (ALLOW_THREAD_GAP_WORK) {
            return System.nanoTime();
        }
        return 0L;
    }

    public AbstractC0286o0 getOnFlingListener() {
        return this.mOnFlingListener;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.mPreserveFocusAfterLayout;
    }

    public C0293s0 getRecycledViewPool() {
        return this.mRecycler.c();
    }

    public int getScrollBarMarginBottom() {
        return getPaddingBottom();
    }

    public int getScrollBarTop() {
        return getPaddingTop();
    }

    public int getScrollState() {
        return this.mScrollState;
    }

    public boolean hasFixedSize() {
        return this.mHasFixedSize;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().f(0) != null;
    }

    public boolean hasPendingAdapterUpdates() {
        return !this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout || this.mAdapterHelper.g();
    }

    public void initAdapterManager() {
        this.mAdapterHelper = new C0259b(new Y(this));
    }

    public void initFastScroller(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
            throw new IllegalArgumentException(C0265e.a(this, new StringBuilder("Trying to set fast scroller without both required drawables.")));
        }
        Resources resources = getContext().getResources();
        new A(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(R.dimen.fastscroll_margin));
    }

    public void invalidateGlows() {
        this.mBottomGlow = null;
        this.mTopGlow = null;
        this.mRightGlow = null;
        this.mLeftGlow = null;
    }

    public void invalidateItemDecorations() {
        if (this.mItemDecorations.size() == 0) {
            return;
        }
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 != null) {
            abstractC0280l0.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public boolean isAccessibilityEnabled() {
        AccessibilityManager accessibilityManager = this.mAccessibilityManager;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    public boolean isAnimating() {
        AbstractC0272h0 abstractC0272h0 = this.mItemAnimator;
        return abstractC0272h0 != null && abstractC0272h0.f();
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.mIsAttached;
    }

    public boolean isComputingLayout() {
        return this.mLayoutOrScrollCounter > 0;
    }

    @Deprecated
    public boolean isLayoutFrozen() {
        return isLayoutSuppressed();
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.mLayoutSuppressed;
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().f3123d;
    }

    public void jumpToPositionForSmoothScroller(int i4) {
        if (this.mLayout == null) {
            return;
        }
        setScrollState(2);
        this.mLayout.scrollToPosition(i4);
        awakenScrollBars();
    }

    public void markItemDecorInsetsDirty() {
        int h4 = this.mChildHelper.h();
        for (int i4 = 0; i4 < h4; i4++) {
            ((C0282m0) this.mChildHelper.g(i4).getLayoutParams()).f3985c = true;
        }
        ArrayList arrayList = this.mRecycler.f4023c;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            C0282m0 c0282m0 = (C0282m0) ((E0) arrayList.get(i5)).itemView.getLayoutParams();
            if (c0282m0 != null) {
                c0282m0.f3985c = true;
            }
        }
    }

    public void markKnownViewsInvalid() {
        int h4 = this.mChildHelper.h();
        for (int i4 = 0; i4 < h4; i4++) {
            E0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i4));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.addFlags(6);
            }
        }
        markItemDecorInsetsDirty();
        C0295t0 c0295t0 = this.mRecycler;
        ArrayList arrayList = c0295t0.f4023c;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            E0 e02 = (E0) arrayList.get(i5);
            if (e02 != null) {
                e02.addFlags(6);
                e02.addChangePayload(null);
            }
        }
        Z z4 = c0295t0.f4028h.mAdapter;
        if (z4 == null || !z4.hasStableIds()) {
            c0295t0.g();
        }
    }

    public void nestedScrollBy(int i4, int i5) {
        nestedScrollByInternal(i4, i5, null, 1);
    }

    public void offsetChildrenHorizontal(int i4) {
        int e4 = this.mChildHelper.e();
        for (int i5 = 0; i5 < e4; i5++) {
            this.mChildHelper.d(i5).offsetLeftAndRight(i4);
        }
    }

    public void offsetChildrenVertical(int i4) {
        int e4 = this.mChildHelper.e();
        for (int i5 = 0; i5 < e4; i5++) {
            this.mChildHelper.d(i5).offsetTopAndBottom(i4);
        }
    }

    public void offsetPositionRecordsForInsert(int i4, int i5) {
        int h4 = this.mChildHelper.h();
        for (int i6 = 0; i6 < h4; i6++) {
            E0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i6));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.mPosition >= i4) {
                if (sVerboseLoggingEnabled) {
                    Log.d(TAG, "offsetPositionRecordsForInsert attached child " + i6 + " holder " + childViewHolderInt + " now at position " + (childViewHolderInt.mPosition + i5));
                }
                childViewHolderInt.offsetPosition(i5, false);
                this.mState.f3763f = true;
            }
        }
        ArrayList arrayList = this.mRecycler.f4023c;
        int size = arrayList.size();
        for (int i7 = 0; i7 < size; i7++) {
            E0 e02 = (E0) arrayList.get(i7);
            if (e02 != null && e02.mPosition >= i4) {
                if (sVerboseLoggingEnabled) {
                    Log.d(TAG, "offsetPositionRecordsForInsert cached " + i7 + " holder " + e02 + " now at position " + (e02.mPosition + i5));
                }
                e02.offsetPosition(i5, false);
            }
        }
        requestLayout();
    }

    public void offsetPositionRecordsForMove(int i4, int i5) {
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int h4 = this.mChildHelper.h();
        int i13 = -1;
        if (i4 < i5) {
            i7 = i4;
            i6 = i5;
            i8 = -1;
        } else {
            i6 = i4;
            i7 = i5;
            i8 = 1;
        }
        for (int i14 = 0; i14 < h4; i14++) {
            E0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i14));
            if (childViewHolderInt != null && (i12 = childViewHolderInt.mPosition) >= i7 && i12 <= i6) {
                if (sVerboseLoggingEnabled) {
                    Log.d(TAG, "offsetPositionRecordsForMove attached child " + i14 + " holder " + childViewHolderInt);
                }
                if (childViewHolderInt.mPosition == i4) {
                    childViewHolderInt.offsetPosition(i5 - i4, false);
                } else {
                    childViewHolderInt.offsetPosition(i8, false);
                }
                this.mState.f3763f = true;
            }
        }
        C0295t0 c0295t0 = this.mRecycler;
        c0295t0.getClass();
        if (i4 < i5) {
            i10 = i4;
            i9 = i5;
        } else {
            i9 = i4;
            i13 = 1;
            i10 = i5;
        }
        ArrayList arrayList = c0295t0.f4023c;
        int size = arrayList.size();
        for (int i15 = 0; i15 < size; i15++) {
            E0 e02 = (E0) arrayList.get(i15);
            if (e02 != null && (i11 = e02.mPosition) >= i10 && i11 <= i9) {
                if (i11 == i4) {
                    e02.offsetPosition(i5 - i4, false);
                } else {
                    e02.offsetPosition(i13, false);
                }
                if (sVerboseLoggingEnabled) {
                    Log.d(TAG, "offsetPositionRecordsForMove cached child " + i15 + " holder " + e02);
                }
            }
        }
        requestLayout();
    }

    public void offsetPositionRecordsForRemove(int i4, int i5, boolean z4) {
        int i6 = i4 + i5;
        int h4 = this.mChildHelper.h();
        for (int i7 = 0; i7 < h4; i7++) {
            E0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i7));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                int i8 = childViewHolderInt.mPosition;
                if (i8 >= i6) {
                    if (sVerboseLoggingEnabled) {
                        Log.d(TAG, "offsetPositionRecordsForRemove attached child " + i7 + " holder " + childViewHolderInt + " now at position " + (childViewHolderInt.mPosition - i5));
                    }
                    childViewHolderInt.offsetPosition(-i5, z4);
                    this.mState.f3763f = true;
                } else if (i8 >= i4) {
                    if (sVerboseLoggingEnabled) {
                        Log.d(TAG, "offsetPositionRecordsForRemove attached child " + i7 + " holder " + childViewHolderInt + " now REMOVED");
                    }
                    childViewHolderInt.addFlags(8);
                    childViewHolderInt.offsetPosition(-i5, z4);
                    childViewHolderInt.mPosition = i4 - 1;
                    this.mState.f3763f = true;
                }
            }
        }
        C0295t0 c0295t0 = this.mRecycler;
        ArrayList arrayList = c0295t0.f4023c;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                requestLayout();
                return;
            }
            E0 e02 = (E0) arrayList.get(size);
            if (e02 != null) {
                int i9 = e02.mPosition;
                if (i9 >= i6) {
                    if (sVerboseLoggingEnabled) {
                        Log.d(TAG, "offsetPositionRecordsForRemove cached " + size + " holder " + e02 + " now at position " + (e02.mPosition - i5));
                    }
                    e02.offsetPosition(-i5, z4);
                } else if (i9 >= i4) {
                    e02.addFlags(8);
                    c0295t0.h(size);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0055, code lost:
        if (r1 >= 30.0f) goto L18;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onAttachedToWindow() {
        /*
            r5 = this;
            super.onAttachedToWindow()
            r0 = 0
            r5.mLayoutOrScrollCounter = r0
            r1 = 1
            r5.mIsAttached = r1
            boolean r2 = r5.mFirstLayoutComplete
            if (r2 == 0) goto L15
            boolean r2 = r5.isLayoutRequested()
            if (r2 != 0) goto L15
            r2 = r1
            goto L16
        L15:
            r2 = r0
        L16:
            r5.mFirstLayoutComplete = r2
            androidx.recyclerview.widget.t0 r2 = r5.mRecycler
            r2.e()
            androidx.recyclerview.widget.l0 r2 = r5.mLayout
            if (r2 == 0) goto L26
            r2.mIsAttachedToWindow = r1
            r2.onAttachedToWindow(r5)
        L26:
            r5.mPostedAnimatorRunner = r0
            boolean r0 = androidx.recyclerview.widget.RecyclerView.ALLOW_THREAD_GAP_WORK
            if (r0 == 0) goto L85
            java.lang.ThreadLocal r0 = androidx.recyclerview.widget.E.f3789h
            java.lang.Object r1 = r0.get()
            androidx.recyclerview.widget.E r1 = (androidx.recyclerview.widget.E) r1
            r5.mGapWorker = r1
            if (r1 != 0) goto L66
            androidx.recyclerview.widget.E r1 = new androidx.recyclerview.widget.E
            r1.<init>()
            r5.mGapWorker = r1
            java.util.WeakHashMap r1 = androidx.core.view.J.f3079a
            android.view.Display r1 = androidx.core.view.C0187y.b(r5)
            boolean r2 = r5.isInEditMode()
            if (r2 != 0) goto L58
            if (r1 == 0) goto L58
            float r1 = r1.getRefreshRate()
            r2 = 1106247680(0x41f00000, float:30.0)
            int r2 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r2 < 0) goto L58
            goto L5a
        L58:
            r1 = 1114636288(0x42700000, float:60.0)
        L5a:
            androidx.recyclerview.widget.E r2 = r5.mGapWorker
            r3 = 1315859240(0x4e6e6b28, float:1.0E9)
            float r3 = r3 / r1
            long r3 = (long) r3
            r2.f3793f = r3
            r0.set(r2)
        L66:
            androidx.recyclerview.widget.E r0 = r5.mGapWorker
            r0.getClass()
            boolean r1 = androidx.recyclerview.widget.RecyclerView.sDebugAssertionsEnabled
            if (r1 == 0) goto L80
            java.util.ArrayList r1 = r0.f3791d
            boolean r1 = r1.contains(r5)
            if (r1 != 0) goto L78
            goto L80
        L78:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "RecyclerView already present in worker list!"
            r5.<init>(r0)
            throw r5
        L80:
            java.util.ArrayList r0 = r0.f3791d
            r0.add(r5)
        L85:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onAttachedToWindow():void");
    }

    public void onChildAttachedToWindow(View view) {
    }

    public void onChildDetachedFromWindow(View view) {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        E e4;
        super.onDetachedFromWindow();
        AbstractC0272h0 abstractC0272h0 = this.mItemAnimator;
        if (abstractC0272h0 != null) {
            abstractC0272h0.e();
        }
        stopScroll();
        this.mIsAttached = false;
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 != null) {
            abstractC0280l0.mIsAttachedToWindow = false;
            abstractC0280l0.onDetachedFromWindow(this);
        }
        this.mPendingAccessibilityImportanceChange.clear();
        removeCallbacks(this.mItemAnimatorRunner);
        this.mViewInfoStore.getClass();
        do {
        } while (U0.f3905d.a() != null);
        C0295t0 c0295t0 = this.mRecycler;
        int i4 = 0;
        while (true) {
            ArrayList arrayList = c0295t0.f4023c;
            if (i4 >= arrayList.size()) {
                break;
            }
            O.a.a(((E0) arrayList.get(i4)).itemView);
            i4++;
        }
        c0295t0.f(c0295t0.f4028h.mAdapter, false);
        androidx.core.view.K k4 = new androidx.core.view.K(this);
        while (k4.hasNext()) {
            View view = (View) k4.next();
            O.c cVar = (O.c) view.getTag(R.id.pooling_container_listener_holder_tag);
            if (cVar == null) {
                cVar = new O.c();
                view.setTag(R.id.pooling_container_listener_holder_tag, cVar);
            }
            ArrayList arrayList2 = cVar.f1413a;
            for (int a4 = kotlin.collections.n.a(arrayList2); -1 < a4; a4--) {
                ((O.b) arrayList2.get(a4)).a();
            }
        }
        if (!ALLOW_THREAD_GAP_WORK || (e4 = this.mGapWorker) == null) {
            return;
        }
        boolean remove = e4.f3791d.remove(this);
        if (sDebugAssertionsEnabled && !remove) {
            throw new IllegalStateException("RecyclerView removal failed!");
        }
        this.mGapWorker = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.mItemDecorations.size();
        for (int i4 = 0; i4 < size; i4++) {
            ((AbstractC0274i0) this.mItemDecorations.get(i4)).onDraw(canvas, this, this.mState);
        }
    }

    public void onEnterLayoutOrScroll() {
        this.mLayoutOrScrollCounter++;
    }

    public void onExitLayoutOrScroll() {
        onExitLayoutOrScroll(true);
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        boolean z4;
        float f4;
        if (this.mLayout != null && !this.mLayoutSuppressed && motionEvent.getAction() == 8) {
            int source = motionEvent.getSource() & 2;
            float f5 = DECELERATION_RATE;
            if (source != 0) {
                float f6 = this.mLayout.canScrollVertically() ? -motionEvent.getAxisValue(9) : 0.0f;
                if (this.mLayout.canScrollHorizontally()) {
                    f5 = motionEvent.getAxisValue(10);
                }
                z4 = false;
                float f7 = f5;
                f5 = f6;
                f4 = f7;
            } else if ((motionEvent.getSource() & QuickStepContract.SYSUI_STATE_BACK_DISABLED) != 0) {
                f4 = motionEvent.getAxisValue(26);
                if (this.mLayout.canScrollVertically()) {
                    f5 = -f4;
                    f4 = 0.0f;
                } else if (!this.mLayout.canScrollHorizontally()) {
                    f4 = 0.0f;
                }
                z4 = this.mLowResRotaryEncoderFeature;
            } else {
                z4 = false;
                f4 = 0.0f;
            }
            int i4 = (int) (f5 * this.mScaledVerticalScrollFactor);
            int i5 = (int) (f4 * this.mScaledHorizontalScrollFactor);
            if (z4) {
                OverScroller overScroller = this.mViewFlinger.f3784f;
                smoothScrollBy((overScroller.getFinalX() - overScroller.getCurrX()) + i5, (overScroller.getFinalY() - overScroller.getCurrY()) + i4, null, Integer.MIN_VALUE, true);
            } else {
                nestedScrollByInternal(i5, i4, motionEvent, 1);
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z4;
        if (this.mLayoutSuppressed) {
            return false;
        }
        this.mInterceptingOnItemTouchListener = null;
        if (findInterceptingOnItemTouchListener(motionEvent)) {
            cancelScroll();
            return true;
        }
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 == null) {
            return false;
        }
        boolean canScrollHorizontally = abstractC0280l0.canScrollHorizontally();
        boolean canScrollVertically = this.mLayout.canScrollVertically();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.mIgnoreMotionEventTillDown) {
                this.mIgnoreMotionEventTillDown = false;
            }
            this.mScrollPointerId = motionEvent.getPointerId(0);
            int x4 = (int) (motionEvent.getX() + 0.5f);
            this.mLastTouchX = x4;
            this.mInitialTouchX = x4;
            int y4 = (int) (motionEvent.getY() + 0.5f);
            this.mLastTouchY = y4;
            this.mInitialTouchY = y4;
            if (stopGlowAnimations(motionEvent) || this.mScrollState == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                stopNestedScroll(1);
            }
            int[] iArr = this.mNestedOffsets;
            iArr[1] = 0;
            iArr[0] = 0;
            startNestedScrollForType(0);
        } else if (actionMasked == 1) {
            this.mVelocityTracker.clear();
            stopNestedScroll(0);
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
            if (findPointerIndex < 0) {
                Log.e(TAG, "Error processing scroll; pointer index for id " + this.mScrollPointerId + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x5 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
            int y5 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
            if (this.mScrollState != 1) {
                int i4 = x5 - this.mInitialTouchX;
                int i5 = y5 - this.mInitialTouchY;
                if (!canScrollHorizontally || Math.abs(i4) <= this.mTouchSlop) {
                    z4 = false;
                } else {
                    this.mLastTouchX = x5;
                    z4 = true;
                }
                if (canScrollVertically && Math.abs(i5) > this.mTouchSlop) {
                    this.mLastTouchY = y5;
                    z4 = true;
                }
                if (z4) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            cancelScroll();
        } else if (actionMasked == 5) {
            this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
            int x6 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.mLastTouchX = x6;
            this.mInitialTouchX = x6;
            int y6 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.mLastTouchY = y6;
            this.mInitialTouchY = y6;
        } else if (actionMasked == 6) {
            onPointerUp(motionEvent);
        }
        return this.mScrollState == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        Trace.beginSection(TRACE_ON_LAYOUT_TAG);
        dispatchLayout();
        Trace.endSection();
        this.mFirstLayoutComplete = true;
    }

    @Override // android.view.View
    public void onMeasure(int i4, int i5) {
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 == null) {
            defaultOnMeasure(i4, i5);
            return;
        }
        boolean z4 = false;
        if (abstractC0280l0.isAutoMeasureEnabled()) {
            int mode = View.MeasureSpec.getMode(i4);
            int mode2 = View.MeasureSpec.getMode(i5);
            this.mLayout.mRecyclerView.defaultOnMeasure(i4, i5);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z4 = true;
            }
            this.mLastAutoMeasureSkippedDueToExact = z4;
            if (z4 || this.mAdapter == null) {
                return;
            }
            if (this.mState.f3761d == 1) {
                dispatchLayoutStep1();
            }
            this.mLayout.setMeasureSpecs(i4, i5);
            this.mState.f3766i = true;
            dispatchLayoutStep2();
            this.mLayout.setMeasuredDimensionFromChildren(i4, i5);
            if (this.mLayout.shouldMeasureTwice()) {
                this.mLayout.setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
                this.mState.f3766i = true;
                dispatchLayoutStep2();
                this.mLayout.setMeasuredDimensionFromChildren(i4, i5);
            }
            this.mLastAutoMeasureNonExactMeasuredWidth = getMeasuredWidth();
            this.mLastAutoMeasureNonExactMeasuredHeight = getMeasuredHeight();
        } else if (this.mHasFixedSize) {
            this.mLayout.mRecyclerView.defaultOnMeasure(i4, i5);
        } else {
            if (this.mAdapterUpdateDuringMeasure) {
                startInterceptRequestLayout();
                onEnterLayoutOrScroll();
                processAdapterUpdatesAndSetAnimationFlags();
                onExitLayoutOrScroll();
                A0 a02 = this.mState;
                if (a02.f3768k) {
                    a02.f3764g = true;
                } else {
                    this.mAdapterHelper.c();
                    this.mState.f3764g = false;
                }
                this.mAdapterUpdateDuringMeasure = false;
                stopInterceptRequestLayout(false);
            } else if (this.mState.f3768k) {
                setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
                return;
            }
            Z z5 = this.mAdapter;
            if (z5 != null) {
                this.mState.f3762e = z5.getItemCount();
            } else {
                this.mState.f3762e = 0;
            }
            startInterceptRequestLayout();
            this.mLayout.mRecyclerView.defaultOnMeasure(i4, i5);
            stopInterceptRequestLayout(false);
            this.mState.f3764g = false;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i4, Rect rect) {
        if (isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i4, rect);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof x0)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        x0 x0Var = (x0) parcelable;
        this.mPendingSavedState = x0Var;
        super.onRestoreInstanceState(x0Var.f1528d);
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        x0 x0Var = new x0(super.onSaveInstanceState());
        x0 x0Var2 = this.mPendingSavedState;
        if (x0Var2 != null) {
            x0Var.f4038f = x0Var2.f4038f;
        } else {
            AbstractC0280l0 abstractC0280l0 = this.mLayout;
            if (abstractC0280l0 != null) {
                x0Var.f4038f = abstractC0280l0.onSaveInstanceState();
            } else {
                x0Var.f4038f = null;
            }
        }
        return x0Var;
    }

    public void onScrollStateChanged(int i4) {
    }

    public void onScrolled(int i4, int i5) {
    }

    @Override // android.view.View
    public void onSizeChanged(int i4, int i5, int i6, int i7) {
        super.onSizeChanged(i4, i5, i6, i7);
        if (i4 == i6 && i5 == i7) {
            return;
        }
        invalidateGlows();
    }

    /* JADX WARN: Removed duplicated region for block: B:153:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x00f5  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            Method dump skipped, instructions count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void postAnimationRunner() {
        if (this.mPostedAnimatorRunner || !this.mIsAttached) {
            return;
        }
        Runnable runnable = this.mItemAnimatorRunner;
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        C0186x.j(this, runnable);
        this.mPostedAnimatorRunner = true;
    }

    public void processDataSetCompletelyChanged(boolean z4) {
        this.mDispatchItemsChangedEvent = z4 | this.mDispatchItemsChangedEvent;
        this.mDataSetHasChangedAfterLayout = true;
        markKnownViewsInvalid();
    }

    public void recordAnimationInfoIfBouncedHiddenView(E0 e02, C0270g0 c0270g0) {
        int i4 = (e02.mFlags & (-8193)) | 0;
        e02.mFlags = i4;
        if (this.mState.f3765h) {
            if (((i4 & 2) != 0) && !e02.isRemoved() && !e02.shouldIgnore()) {
                this.mViewInfoStore.f3916b.f(getChangedHolderKey(e02), e02);
            }
        }
        q.m mVar = this.mViewInfoStore.f3915a;
        U0 u02 = (U0) mVar.get(e02);
        if (u02 == null) {
            u02 = U0.a();
            mVar.put(e02, u02);
        }
        u02.f3907b = c0270g0;
        u02.f3906a |= 4;
    }

    public void removeAndRecycleViews() {
        AbstractC0272h0 abstractC0272h0 = this.mItemAnimator;
        if (abstractC0272h0 != null) {
            abstractC0272h0.e();
        }
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 != null) {
            abstractC0280l0.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        }
        C0295t0 c0295t0 = this.mRecycler;
        c0295t0.f4021a.clear();
        c0295t0.g();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean removeAnimatingView(android.view.View r6) {
        /*
            r5 = this;
            r5.startInterceptRequestLayout()
            androidx.recyclerview.widget.g r0 = r5.mChildHelper
            androidx.recyclerview.widget.Y r1 = r0.f3936a
            androidx.recyclerview.widget.RecyclerView r2 = r1.f3917a
            int r2 = r2.indexOfChild(r6)
            r3 = -1
            if (r2 != r3) goto L14
            r0.k(r6)
            goto L25
        L14:
            androidx.recyclerview.widget.f r3 = r0.f3937b
            boolean r4 = r3.d(r2)
            if (r4 == 0) goto L27
            r3.f(r2)
            r0.k(r6)
            r1.d(r2)
        L25:
            r0 = 1
            goto L28
        L27:
            r0 = 0
        L28:
            if (r0 == 0) goto L57
            androidx.recyclerview.widget.E0 r1 = getChildViewHolderInt(r6)
            androidx.recyclerview.widget.t0 r2 = r5.mRecycler
            r2.m(r1)
            androidx.recyclerview.widget.t0 r2 = r5.mRecycler
            r2.j(r1)
            boolean r1 = androidx.recyclerview.widget.RecyclerView.sVerboseLoggingEnabled
            if (r1 == 0) goto L57
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "after removing animated view: "
            r1.<init>(r2)
            r1.append(r6)
            java.lang.String r6 = ", "
            r1.append(r6)
            r1.append(r5)
            java.lang.String r6 = r1.toString()
            java.lang.String r1 = "RecyclerView"
            android.util.Log.d(r1, r6)
        L57:
            r6 = r0 ^ 1
            r5.stopInterceptRequestLayout(r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.removeAnimatingView(android.view.View):boolean");
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(View view, boolean z4) {
        E0 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (childViewHolderInt.isTmpDetached()) {
                childViewHolderInt.mFlags &= -257;
            } else if (!childViewHolderInt.shouldIgnore()) {
                StringBuilder sb = new StringBuilder("Called removeDetachedView with a view which is not flagged as tmp detached.");
                sb.append(childViewHolderInt);
                throw new IllegalArgumentException(C0265e.a(this, sb));
            }
        } else if (sDebugAssertionsEnabled) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            throw new IllegalArgumentException(C0265e.a(this, sb2));
        }
        view.clearAnimation();
        dispatchChildDetached(view);
        super.removeDetachedView(view, z4);
    }

    public void removeItemDecoration(AbstractC0274i0 abstractC0274i0) {
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 != null) {
            abstractC0280l0.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
        }
        this.mItemDecorations.remove(abstractC0274i0);
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void removeItemDecorationAt(int i4) {
        int itemDecorationCount = getItemDecorationCount();
        if (i4 >= 0 && i4 < itemDecorationCount) {
            removeItemDecoration(getItemDecorationAt(i4));
            return;
        }
        throw new IndexOutOfBoundsException(i4 + " is an invalid index for size " + itemDecorationCount);
    }

    public void removeOnChildAttachStateChangeListener(InterfaceC0284n0 interfaceC0284n0) {
        List list = this.mOnChildAttachStateListeners;
        if (list == null) {
            return;
        }
        list.remove(interfaceC0284n0);
    }

    public void removeOnItemTouchListener(InterfaceC0288p0 interfaceC0288p0) {
        this.mOnItemTouchListeners.remove(interfaceC0288p0);
        if (this.mInterceptingOnItemTouchListener == interfaceC0288p0) {
            this.mInterceptingOnItemTouchListener = null;
        }
    }

    public void removeOnScrollListener(AbstractC0290q0 abstractC0290q0) {
        List list = this.mScrollListeners;
        if (list != null) {
            list.remove(abstractC0290q0);
        }
    }

    public void removeRecyclerListener(InterfaceC0297u0 interfaceC0297u0) {
        this.mRecyclerListeners.remove(interfaceC0297u0);
    }

    public void repositionShadowingViews() {
        E0 e02;
        int e4 = this.mChildHelper.e();
        for (int i4 = 0; i4 < e4; i4++) {
            View d4 = this.mChildHelper.d(i4);
            E0 childViewHolder = getChildViewHolder(d4);
            if (childViewHolder != null && (e02 = childViewHolder.mShadowingHolder) != null) {
                View view = e02.itemView;
                int left = d4.getLeft();
                int top = d4.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        O o4 = this.mLayout.mSmoothScroller;
        boolean z4 = true;
        if (!(o4 != null && o4.d()) && !isComputingLayout()) {
            z4 = false;
        }
        if (!z4 && view2 != null) {
            requestChildOnScreen(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z4) {
        return this.mLayout.requestChildRectangleOnScreen(this, view, rect, z4, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z4) {
        int size = this.mOnItemTouchListeners.size();
        for (int i4 = 0; i4 < size; i4++) {
            ((InterfaceC0288p0) this.mOnItemTouchListeners.get(i4)).onRequestDisallowInterceptTouchEvent();
        }
        super.requestDisallowInterceptTouchEvent(z4);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mInterceptRequestLayoutDepth != 0 || this.mLayoutSuppressed) {
            this.mLayoutWasDefered = true;
        } else {
            super.requestLayout();
        }
    }

    public void saveOldPositions() {
        int h4 = this.mChildHelper.h();
        for (int i4 = 0; i4 < h4; i4++) {
            E0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i4));
            if (sDebugAssertionsEnabled && childViewHolderInt.mPosition == -1 && !childViewHolderInt.isRemoved()) {
                throw new IllegalStateException(C0265e.a(this, new StringBuilder("view holder cannot have position -1 unless it is removed")));
            }
            if (!childViewHolderInt.shouldIgnore() && childViewHolderInt.mOldPosition == -1) {
                childViewHolderInt.mOldPosition = childViewHolderInt.mPosition;
            }
        }
    }

    @Override // android.view.View
    public void scrollBy(int i4, int i5) {
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 == null) {
            Log.e(TAG, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (this.mLayoutSuppressed) {
        } else {
            boolean canScrollHorizontally = abstractC0280l0.canScrollHorizontally();
            boolean canScrollVertically = this.mLayout.canScrollVertically();
            if (canScrollHorizontally || canScrollVertically) {
                if (!canScrollHorizontally) {
                    i4 = 0;
                }
                if (!canScrollVertically) {
                    i5 = 0;
                }
                scrollByInternal(i4, i5, null, 0);
            }
        }
    }

    public boolean scrollByInternal(int i4, int i5, MotionEvent motionEvent, int i6) {
        int i7;
        int i8;
        int i9;
        int i10;
        consumePendingUpdateOperations();
        if (this.mAdapter != null) {
            int[] iArr = this.mReusableIntPair;
            iArr[0] = 0;
            iArr[1] = 0;
            scrollStep(i4, i5, iArr);
            int[] iArr2 = this.mReusableIntPair;
            int i11 = iArr2[0];
            int i12 = iArr2[1];
            i7 = i12;
            i8 = i11;
            i9 = i4 - i11;
            i10 = i5 - i12;
        } else {
            i7 = 0;
            i8 = 0;
            i9 = 0;
            i10 = 0;
        }
        if (!this.mItemDecorations.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.mReusableIntPair;
        iArr3[0] = 0;
        iArr3[1] = 0;
        dispatchNestedScroll(i8, i7, i9, i10, this.mScrollOffset, i6, iArr3);
        int[] iArr4 = this.mReusableIntPair;
        int i13 = iArr4[0];
        int i14 = i9 - i13;
        int i15 = iArr4[1];
        int i16 = i10 - i15;
        boolean z4 = (i13 == 0 && i15 == 0) ? false : true;
        int i17 = this.mLastTouchX;
        int[] iArr5 = this.mScrollOffset;
        int i18 = iArr5[0];
        this.mLastTouchX = i17 - i18;
        int i19 = this.mLastTouchY;
        int i20 = iArr5[1];
        this.mLastTouchY = i19 - i20;
        int[] iArr6 = this.mNestedOffsets;
        iArr6[0] = iArr6[0] + i18;
        iArr6[1] = iArr6[1] + i20;
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && !C0175l.a(motionEvent, 8194)) {
                pullGlows(motionEvent.getX(), i14, motionEvent.getY(), i16);
                if (C0175l.a(motionEvent, QuickStepContract.SYSUI_STATE_BACK_DISABLED)) {
                    releaseGlows();
                }
            }
            considerReleasingGlowsOnScroll(i4, i5);
        }
        if (i8 != 0 || i7 != 0) {
            dispatchOnScrolled(i8, i7);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z4 && i8 == 0 && i7 == 0) ? false : true;
    }

    public void scrollStep(int i4, int i5, int[] iArr) {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        Trace.beginSection(TRACE_SCROLL_TAG);
        fillRemainingScrollValues(this.mState);
        int scrollHorizontallyBy = i4 != 0 ? this.mLayout.scrollHorizontallyBy(i4, this.mRecycler, this.mState) : 0;
        int scrollVerticallyBy = i5 != 0 ? this.mLayout.scrollVerticallyBy(i5, this.mRecycler, this.mState) : 0;
        Trace.endSection();
        repositionShadowingViews();
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        if (iArr != null) {
            iArr[0] = scrollHorizontallyBy;
            iArr[1] = scrollVerticallyBy;
        }
    }

    @Override // android.view.View
    public void scrollTo(int i4, int i5) {
        Log.w(TAG, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    public void scrollToPosition(int i4) {
        if (this.mLayoutSuppressed) {
            return;
        }
        stopScroll();
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 == null) {
            Log.e(TAG, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        abstractC0280l0.scrollToPosition(i4);
        awakenScrollBars();
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (shouldDeferAccessibilityEvent(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(G0 g02) {
        this.mAccessibilityDelegate = g02;
        androidx.core.view.J.h(this, g02);
    }

    public void setAdapter(Z z4) {
        setLayoutFrozen(false);
        setAdapterInternal(z4, false, true);
        processDataSetCompletelyChanged(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(InterfaceC0262c0 interfaceC0262c0) {
        if (interfaceC0262c0 == null) {
            return;
        }
        setChildrenDrawingOrderEnabled(false);
    }

    public boolean setChildImportantForAccessibilityInternal(E0 e02, int i4) {
        if (isComputingLayout()) {
            e02.mPendingAccessibilityState = i4;
            this.mPendingAccessibilityImportanceChange.add(e02);
            return false;
        }
        View view = e02.itemView;
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        C0186x.o(view, i4);
        return true;
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z4) {
        if (z4 != this.mClipToPadding) {
            invalidateGlows();
        }
        this.mClipToPadding = z4;
        super.setClipToPadding(z4);
        if (this.mFirstLayoutComplete) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(C0264d0 c0264d0) {
        c0264d0.getClass();
        this.mEdgeEffectFactory = c0264d0;
        invalidateGlows();
    }

    public void setHasFixedSize(boolean z4) {
        this.mHasFixedSize = z4;
    }

    public void setItemAnimator(AbstractC0272h0 abstractC0272h0) {
        AbstractC0272h0 abstractC0272h02 = this.mItemAnimator;
        if (abstractC0272h02 != null) {
            abstractC0272h02.e();
            this.mItemAnimator.f3944a = null;
        }
        this.mItemAnimator = abstractC0272h0;
        if (abstractC0272h0 != null) {
            abstractC0272h0.f3944a = this.mItemAnimatorListener;
        }
    }

    public void setItemViewCacheSize(int i4) {
        C0295t0 c0295t0 = this.mRecycler;
        c0295t0.f4025e = i4;
        c0295t0.n();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z4) {
        suppressLayout(z4);
    }

    public void setLayoutManager(AbstractC0280l0 abstractC0280l0) {
        Y y4;
        RecyclerView recyclerView;
        if (abstractC0280l0 == this.mLayout) {
            return;
        }
        stopScroll();
        int i4 = 0;
        if (this.mLayout != null) {
            AbstractC0272h0 abstractC0272h0 = this.mItemAnimator;
            if (abstractC0272h0 != null) {
                abstractC0272h0.e();
            }
            this.mLayout.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
            C0295t0 c0295t0 = this.mRecycler;
            c0295t0.f4021a.clear();
            c0295t0.g();
            if (this.mIsAttached) {
                AbstractC0280l0 abstractC0280l02 = this.mLayout;
                abstractC0280l02.mIsAttachedToWindow = false;
                abstractC0280l02.onDetachedFromWindow(this);
            }
            this.mLayout.setRecyclerView(null);
            this.mLayout = null;
        } else {
            C0295t0 c0295t02 = this.mRecycler;
            c0295t02.f4021a.clear();
            c0295t02.g();
        }
        C0269g c0269g = this.mChildHelper;
        c0269g.f3937b.g();
        ArrayList arrayList = (ArrayList) c0269g.f3938c;
        int size = arrayList.size();
        while (true) {
            size--;
            y4 = c0269g.f3936a;
            if (size < 0) {
                break;
            }
            y4.getClass();
            E0 childViewHolderInt = getChildViewHolderInt((View) arrayList.get(size));
            if (childViewHolderInt != null) {
                childViewHolderInt.onLeftHiddenState(y4.f3917a);
            }
            arrayList.remove(size);
        }
        int c4 = y4.c();
        while (true) {
            recyclerView = y4.f3917a;
            if (i4 >= c4) {
                break;
            }
            View childAt = recyclerView.getChildAt(i4);
            recyclerView.dispatchChildDetached(childAt);
            childAt.clearAnimation();
            i4++;
        }
        recyclerView.removeAllViews();
        this.mLayout = abstractC0280l0;
        if (abstractC0280l0 != null) {
            if (abstractC0280l0.mRecyclerView != null) {
                StringBuilder sb = new StringBuilder("LayoutManager ");
                sb.append(abstractC0280l0);
                sb.append(" is already attached to a RecyclerView:");
                throw new IllegalArgumentException(C0265e.a(abstractC0280l0.mRecyclerView, sb));
            }
            abstractC0280l0.setRecyclerView(this);
            if (this.mIsAttached) {
                AbstractC0280l0 abstractC0280l03 = this.mLayout;
                abstractC0280l03.mIsAttachedToWindow = true;
                abstractC0280l03.onAttachedToWindow(this);
            }
        }
        this.mRecycler.n();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition != null) {
            throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z4) {
        C0177n scrollingChildHelper = getScrollingChildHelper();
        if (scrollingChildHelper.f3123d) {
            WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
            androidx.core.view.D.p(scrollingChildHelper.f3122c);
        }
        scrollingChildHelper.f3123d = z4;
    }

    public void setOnFlingListener(AbstractC0286o0 abstractC0286o0) {
        this.mOnFlingListener = abstractC0286o0;
    }

    @Deprecated
    public void setOnScrollListener(AbstractC0290q0 abstractC0290q0) {
        this.mScrollListener = abstractC0290q0;
    }

    public void setPreserveFocusAfterLayout(boolean z4) {
        this.mPreserveFocusAfterLayout = z4;
    }

    public void setRecycledViewPool(C0293s0 c0293s0) {
        C0293s0 c0293s02;
        C0295t0 c0295t0 = this.mRecycler;
        RecyclerView recyclerView = c0295t0.f4028h;
        c0295t0.f(recyclerView.mAdapter, false);
        if (c0295t0.f4027g != null) {
            c0293s02.mAttachCountForClearing--;
        }
        c0295t0.f4027g = c0293s0;
        if (c0293s0 != null && recyclerView.getAdapter() != null) {
            c0295t0.f4027g.mAttachCountForClearing++;
        }
        c0295t0.e();
    }

    @Deprecated
    public void setRecyclerListener(InterfaceC0297u0 interfaceC0297u0) {
        this.mRecyclerListener = interfaceC0297u0;
    }

    public void setScrollState(int i4) {
        if (i4 == this.mScrollState) {
            return;
        }
        if (sVerboseLoggingEnabled) {
            StringBuilder a4 = C0196d0.a("setting scroll state to ", i4, " from ");
            a4.append(this.mScrollState);
            Log.d(TAG, a4.toString(), new Exception());
        }
        this.mScrollState = i4;
        if (i4 != 2) {
            stopScrollersInternal();
        }
        dispatchOnScrollStateChanged(i4);
    }

    public void setScrollingTouchSlop(int i4) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i4 != 0) {
            if (i4 == 1) {
                this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            Log.w(TAG, "setScrollingTouchSlop(): bad argument constant " + i4 + "; using default value");
        }
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(C0 c02) {
        this.mRecycler.getClass();
    }

    public boolean shouldDeferAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (isComputingLayout()) {
            int contentChangeTypes = accessibilityEvent != null ? accessibilityEvent.getContentChangeTypes() : 0;
            this.mEatenAccessibilityChangeFlags |= contentChangeTypes != 0 ? contentChangeTypes : 0;
            return true;
        }
        return false;
    }

    public void smoothScrollBy(int i4, int i5) {
        smoothScrollBy(i4, i5, null);
    }

    public void smoothScrollToPosition(int i4) {
        if (this.mLayoutSuppressed) {
            return;
        }
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 == null) {
            Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            abstractC0280l0.smoothScrollToPosition(this, i4);
        }
    }

    public void startInterceptRequestLayout() {
        int i4 = this.mInterceptRequestLayoutDepth + 1;
        this.mInterceptRequestLayoutDepth = i4;
        if (i4 != 1 || this.mLayoutSuppressed) {
            return;
        }
        this.mLayoutWasDefered = false;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i4) {
        return getScrollingChildHelper().g(i4, 0);
    }

    public void stopInterceptRequestLayout(boolean z4) {
        if (this.mInterceptRequestLayoutDepth < 1) {
            if (sDebugAssertionsEnabled) {
                throw new IllegalStateException(C0265e.a(this, new StringBuilder("stopInterceptRequestLayout was called more times than startInterceptRequestLayout.")));
            }
            this.mInterceptRequestLayoutDepth = 1;
        }
        if (!z4 && !this.mLayoutSuppressed) {
            this.mLayoutWasDefered = false;
        }
        if (this.mInterceptRequestLayoutDepth == 1) {
            if (z4 && this.mLayoutWasDefered && !this.mLayoutSuppressed && this.mLayout != null && this.mAdapter != null) {
                dispatchLayout();
            }
            if (!this.mLayoutSuppressed) {
                this.mLayoutWasDefered = false;
            }
        }
        this.mInterceptRequestLayoutDepth--;
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        getScrollingChildHelper().h(0);
    }

    public void stopScroll() {
        setScrollState(0);
        stopScrollersInternal();
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z4) {
        if (z4 != this.mLayoutSuppressed) {
            assertNotInLayoutOrScroll("Do not suppressLayout in layout or scroll");
            if (z4) {
                long uptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, DECELERATION_RATE, DECELERATION_RATE, 0));
                this.mLayoutSuppressed = true;
                this.mIgnoreMotionEventTillDown = true;
                stopScroll();
                return;
            }
            this.mLayoutSuppressed = false;
            if (this.mLayoutWasDefered && this.mLayout != null && this.mAdapter != null) {
                requestLayout();
            }
            this.mLayoutWasDefered = false;
        }
    }

    public void swapAdapter(Z z4, boolean z5) {
        setLayoutFrozen(false);
        setAdapterInternal(z4, true, z5);
        processDataSetCompletelyChanged(true);
        requestLayout();
    }

    public void viewRangeUpdate(int i4, int i5, Object obj) {
        int i6;
        int i7;
        int h4 = this.mChildHelper.h();
        int i8 = i5 + i4;
        for (int i9 = 0; i9 < h4; i9++) {
            View g4 = this.mChildHelper.g(i9);
            E0 childViewHolderInt = getChildViewHolderInt(g4);
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && (i7 = childViewHolderInt.mPosition) >= i4 && i7 < i8) {
                childViewHolderInt.addFlags(2);
                childViewHolderInt.addChangePayload(obj);
                ((C0282m0) g4.getLayoutParams()).f3985c = true;
            }
        }
        C0295t0 c0295t0 = this.mRecycler;
        ArrayList arrayList = c0295t0.f4023c;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            E0 e02 = (E0) arrayList.get(size);
            if (e02 != null && (i6 = e02.mPosition) >= i4 && i6 < i8) {
                e02.addFlags(2);
                c0295t0.h(size);
            }
        }
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.recyclerViewStyle);
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0036 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.recyclerview.widget.E0 findViewHolderForPosition(int r6, boolean r7) {
        /*
            r5 = this;
            androidx.recyclerview.widget.g r0 = r5.mChildHelper
            int r0 = r0.h()
            r1 = 0
            r2 = 0
        L8:
            if (r2 >= r0) goto L3a
            androidx.recyclerview.widget.g r3 = r5.mChildHelper
            android.view.View r3 = r3.g(r2)
            androidx.recyclerview.widget.E0 r3 = getChildViewHolderInt(r3)
            if (r3 == 0) goto L37
            boolean r4 = r3.isRemoved()
            if (r4 != 0) goto L37
            if (r7 == 0) goto L23
            int r4 = r3.mPosition
            if (r4 == r6) goto L2a
            goto L37
        L23:
            int r4 = r3.getLayoutPosition()
            if (r4 == r6) goto L2a
            goto L37
        L2a:
            androidx.recyclerview.widget.g r1 = r5.mChildHelper
            android.view.View r4 = r3.itemView
            boolean r1 = r1.j(r4)
            if (r1 == 0) goto L36
            r1 = r3
            goto L37
        L36:
            return r3
        L37:
            int r2 = r2 + 1
            goto L8
        L3a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.findViewHolderForPosition(int, boolean):androidx.recyclerview.widget.E0");
    }

    public void onExitLayoutOrScroll(boolean z4) {
        int i4 = this.mLayoutOrScrollCounter - 1;
        this.mLayoutOrScrollCounter = i4;
        if (i4 < 1) {
            if (sDebugAssertionsEnabled && i4 < 0) {
                throw new IllegalStateException(C0265e.a(this, new StringBuilder("layout or scroll counter cannot go below zero.Some calls are not matching")));
            }
            this.mLayoutOrScrollCounter = 0;
            if (z4) {
                dispatchContentChangedIfNecessary();
                dispatchPendingImportantForAccessibilityChanges();
            }
        }
    }

    public void smoothScrollBy(int i4, int i5, Interpolator interpolator) {
        smoothScrollBy(i4, i5, interpolator, Integer.MIN_VALUE);
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mObserver = new C0299v0(this);
        this.mRecycler = new C0295t0(this);
        this.mViewInfoStore = new W0();
        this.mUpdateChildViewsRunnable = new W(this, 0);
        this.mTempRect = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempRectF = new RectF();
        this.mRecyclerListeners = new ArrayList();
        this.mItemDecorations = new ArrayList();
        this.mOnItemTouchListeners = new ArrayList();
        this.mInterceptRequestLayoutDepth = 0;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        this.mLayoutOrScrollCounter = 0;
        this.mDispatchScrollCounter = 0;
        this.mEdgeEffectFactory = sDefaultEdgeEffectFactory;
        this.mItemAnimator = new C0283n();
        this.mScrollState = 0;
        this.mScrollPointerId = -1;
        this.mScaledHorizontalScrollFactor = Float.MIN_VALUE;
        this.mScaledVerticalScrollFactor = Float.MIN_VALUE;
        this.mPreserveFocusAfterLayout = true;
        this.mViewFlinger = new D0(this);
        this.mPrefetchRegistry = ALLOW_THREAD_GAP_WORK ? new C() : null;
        this.mState = new A0();
        this.mItemsAddedOrRemoved = false;
        this.mItemsChanged = false;
        this.mItemAnimatorListener = new Y(this);
        this.mPostedAnimatorRunner = false;
        this.mMinMaxLayoutPositions = new int[2];
        this.mScrollOffset = new int[2];
        this.mNestedOffsets = new int[2];
        this.mReusableIntPair = new int[2];
        this.mPendingAccessibilityImportanceChange = new ArrayList();
        this.mItemAnimatorRunner = new W(this, 1);
        this.mLastAutoMeasureNonExactMeasuredWidth = 0;
        this.mLastAutoMeasureNonExactMeasuredHeight = 0;
        this.mViewInfoProcessCallback = new Y(this);
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mScaledHorizontalScrollFactor = viewConfiguration.getScaledHorizontalScrollFactor();
        this.mScaledVerticalScrollFactor = viewConfiguration.getScaledVerticalScrollFactor();
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mPhysicalCoef = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        setWillNotDraw(getOverScrollMode() == 2);
        this.mItemAnimator.f3944a = this.mItemAnimatorListener;
        initAdapterManager();
        initChildrenHelper();
        initAutofill();
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        if (C0186x.b(this) == 0) {
            C0186x.o(this, 1);
        }
        this.mAccessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new G0(this));
        int[] iArr = Z.a.f2347a;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i4, 0);
        androidx.core.view.H.b(this, context, iArr, attributeSet, obtainStyledAttributes, i4, 0);
        String string = obtainStyledAttributes.getString(8);
        if (obtainStyledAttributes.getInt(2, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.mClipToPadding = obtainStyledAttributes.getBoolean(1, true);
        boolean z4 = obtainStyledAttributes.getBoolean(3, false);
        this.mEnableFastScroller = z4;
        if (z4) {
            initFastScroller((StateListDrawable) obtainStyledAttributes.getDrawable(6), obtainStyledAttributes.getDrawable(7), (StateListDrawable) obtainStyledAttributes.getDrawable(4), obtainStyledAttributes.getDrawable(5));
        }
        obtainStyledAttributes.recycle();
        this.mLowResRotaryEncoderFeature = context.getPackageManager().hasSystemFeature(LOW_RES_ROTARY_ENCODER_FEATURE);
        createLayoutManager(context, string, attributeSet, i4, 0);
        int[] iArr2 = NESTED_SCROLLING_ATTRS;
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i4, 0);
        androidx.core.view.H.b(this, context, iArr2, attributeSet, obtainStyledAttributes2, i4, 0);
        boolean z5 = obtainStyledAttributes2.getBoolean(0, true);
        obtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z5);
        setTag(R.id.is_pooling_container_tag, Boolean.TRUE);
    }

    public boolean dispatchNestedPreScroll(int i4, int i5, int[] iArr, int[] iArr2, int i6) {
        return getScrollingChildHelper().c(i4, i5, iArr, iArr2, i6);
    }

    public boolean dispatchNestedScroll(int i4, int i5, int i6, int i7, int[] iArr, int i8) {
        return getScrollingChildHelper().e(i4, i5, i6, i7, iArr, i8, null);
    }

    public boolean hasNestedScrollingParent(int i4) {
        return getScrollingChildHelper().f(i4) != null;
    }

    public void smoothScrollBy(int i4, int i5, Interpolator interpolator, int i6) {
        smoothScrollBy(i4, i5, interpolator, i6, false);
    }

    public boolean startNestedScroll(int i4, int i5) {
        return getScrollingChildHelper().g(i4, i5);
    }

    public void stopNestedScroll(int i4) {
        getScrollingChildHelper().h(i4);
    }

    public void smoothScrollBy(int i4, int i5, Interpolator interpolator, int i6, boolean z4) {
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 == null) {
            Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (this.mLayoutSuppressed) {
        } else {
            if (!abstractC0280l0.canScrollHorizontally()) {
                i4 = 0;
            }
            if (!this.mLayout.canScrollVertically()) {
                i5 = 0;
            }
            if (i4 == 0 && i5 == 0) {
                return;
            }
            if (i6 == Integer.MIN_VALUE || i6 > 0) {
                if (z4) {
                    int i7 = i4 != 0 ? 1 : 0;
                    if (i5 != 0) {
                        i7 |= 2;
                    }
                    startNestedScroll(i7, 1);
                }
                this.mViewFlinger.c(i4, i5, interpolator, i6);
                return;
            }
            scrollBy(i4, i5);
        }
    }

    public final void dispatchNestedScroll(int i4, int i5, int i6, int i7, int[] iArr, int i8, int[] iArr2) {
        getScrollingChildHelper().e(i4, i5, i6, i7, iArr, i8, iArr2);
    }

    public void addItemDecoration(AbstractC0274i0 abstractC0274i0) {
        addItemDecoration(abstractC0274i0, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        AbstractC0280l0 abstractC0280l0 = this.mLayout;
        if (abstractC0280l0 != null) {
            return abstractC0280l0.generateLayoutParams(layoutParams);
        }
        throw new IllegalStateException(C0265e.a(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }
}
