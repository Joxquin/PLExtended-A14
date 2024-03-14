package androidx.core.widget;

import N.c;
import N.e;
import N.g;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import androidx.core.view.C0175l;
import androidx.core.view.C0177n;
import androidx.core.view.C0180q;
import androidx.core.view.C0186x;
import androidx.core.view.D;
import androidx.core.view.InterfaceC0176m;
import androidx.core.view.InterfaceC0179p;
import androidx.core.view.J;
import com.android.quickstep.util.StaggeredWorkspaceAnim;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.ArrayList;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements InterfaceC0179p, InterfaceC0176m {

    /* renamed from: D  reason: collision with root package name */
    public static final float f3136D = (float) (Math.log(0.78d) / Math.log(0.9d));

    /* renamed from: E  reason: collision with root package name */
    public static final e f3137E = new e();

    /* renamed from: F  reason: collision with root package name */
    public static final int[] f3138F = {16843130};

    /* renamed from: A  reason: collision with root package name */
    public final C0180q f3139A;

    /* renamed from: B  reason: collision with root package name */
    public final C0177n f3140B;

    /* renamed from: C  reason: collision with root package name */
    public float f3141C;

    /* renamed from: d  reason: collision with root package name */
    public final float f3142d;

    /* renamed from: e  reason: collision with root package name */
    public long f3143e;

    /* renamed from: f  reason: collision with root package name */
    public final Rect f3144f;

    /* renamed from: g  reason: collision with root package name */
    public OverScroller f3145g;

    /* renamed from: h  reason: collision with root package name */
    public final EdgeEffect f3146h;

    /* renamed from: i  reason: collision with root package name */
    public final EdgeEffect f3147i;

    /* renamed from: j  reason: collision with root package name */
    public int f3148j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f3149k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f3150l;

    /* renamed from: m  reason: collision with root package name */
    public View f3151m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f3152n;

    /* renamed from: o  reason: collision with root package name */
    public VelocityTracker f3153o;

    /* renamed from: p  reason: collision with root package name */
    public boolean f3154p;

    /* renamed from: q  reason: collision with root package name */
    public final boolean f3155q;

    /* renamed from: r  reason: collision with root package name */
    public int f3156r;

    /* renamed from: s  reason: collision with root package name */
    public int f3157s;

    /* renamed from: t  reason: collision with root package name */
    public int f3158t;

    /* renamed from: u  reason: collision with root package name */
    public int f3159u;

    /* renamed from: v  reason: collision with root package name */
    public final int[] f3160v;

    /* renamed from: w  reason: collision with root package name */
    public final int[] f3161w;

    /* renamed from: x  reason: collision with root package name */
    public int f3162x;

    /* renamed from: y  reason: collision with root package name */
    public int f3163y;

    /* renamed from: z  reason: collision with root package name */
    public g f3164z;

    public NestedScrollView(Context context) {
        this(context, null);
    }

    public static boolean h(View view, View view2) {
        if (view == view2) {
            return true;
        }
        ViewParent parent = view.getParent();
        return (parent instanceof ViewGroup) && h((View) parent, view2);
    }

    public final boolean a(int i4) {
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i4);
        int height = (int) (getHeight() * 0.5f);
        if (findNextFocus == null || !i(height, findNextFocus, getHeight())) {
            if (i4 == 33 && getScrollY() < height) {
                height = getScrollY();
            } else if (i4 == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                height = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getHeight() + getScrollY()) - getPaddingBottom()), height);
            }
            if (height == 0) {
                return false;
            }
            if (i4 != 130) {
                height = -height;
            }
            u(height, 0, 1, true);
        } else {
            findNextFocus.getDrawingRect(this.f3144f);
            offsetDescendantRectToMyCoords(findNextFocus, this.f3144f);
            u(b(this.f3144f), 0, 1, true);
            findNextFocus.requestFocus(i4);
        }
        if (findFocus != null && findFocus.isFocused() && (!i(0, findFocus, getHeight()))) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        if (getChildCount() <= 0) {
            super.addView(view);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    public final int b(Rect rect) {
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i5 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i4 - verticalFadingEdgeLength : i4;
        int i6 = rect.bottom;
        if (i6 > i5 && rect.top > scrollY) {
            return Math.min((rect.height() > height ? rect.top - scrollY : rect.bottom - i5) + 0, (childAt.getBottom() + layoutParams.bottomMargin) - i4);
        } else if (rect.top >= scrollY || i6 >= i5) {
            return 0;
        } else {
            return Math.max(rect.height() > height ? 0 - (i5 - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
        }
    }

    public final boolean c(int i4, int i5, int[] iArr, int[] iArr2, int i6) {
        return this.f3140B.c(i4, i5, iArr, iArr2, i6);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0104  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void computeScroll() {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.computeScroll():void");
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int max = Math.max(0, bottom - height);
        return scrollY < 0 ? bottom - scrollY : scrollY > max ? bottom + (scrollY - max) : bottom;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d(android.view.KeyEvent r6) {
        /*
            r5 = this;
            android.graphics.Rect r0 = r5.f3144f
            r0.setEmpty()
            int r0 = r5.getChildCount()
            r1 = 1
            r2 = 0
            if (r0 <= 0) goto L33
            android.view.View r0 = r5.getChildAt(r2)
            android.view.ViewGroup$LayoutParams r3 = r0.getLayoutParams()
            android.widget.FrameLayout$LayoutParams r3 = (android.widget.FrameLayout.LayoutParams) r3
            int r0 = r0.getHeight()
            int r4 = r3.topMargin
            int r0 = r0 + r4
            int r3 = r3.bottomMargin
            int r0 = r0 + r3
            int r3 = r5.getHeight()
            int r4 = r5.getPaddingTop()
            int r3 = r3 - r4
            int r4 = r5.getPaddingBottom()
            int r3 = r3 - r4
            if (r0 <= r3) goto L33
            r0 = r1
            goto L34
        L33:
            r0 = r2
        L34:
            r3 = 130(0x82, float:1.82E-43)
            if (r0 != 0) goto L62
            boolean r0 = r5.isFocused()
            if (r0 == 0) goto L61
            int r6 = r6.getKeyCode()
            r0 = 4
            if (r6 == r0) goto L61
            android.view.View r6 = r5.findFocus()
            if (r6 != r5) goto L4c
            r6 = 0
        L4c:
            android.view.FocusFinder r0 = android.view.FocusFinder.getInstance()
            android.view.View r6 = r0.findNextFocus(r5, r6, r3)
            if (r6 == 0) goto L5f
            if (r6 == r5) goto L5f
            boolean r5 = r6.requestFocus(r3)
            if (r5 == 0) goto L5f
            goto L60
        L5f:
            r1 = r2
        L60:
            return r1
        L61:
            return r2
        L62:
            int r0 = r6.getAction()
            if (r0 != 0) goto Lc7
            int r0 = r6.getKeyCode()
            r1 = 19
            r4 = 33
            if (r0 == r1) goto Lb8
            r1 = 20
            if (r0 == r1) goto La8
            r1 = 62
            if (r0 == r1) goto L9d
            r6 = 92
            if (r0 == r6) goto L98
            r6 = 93
            if (r0 == r6) goto L93
            r6 = 122(0x7a, float:1.71E-43)
            if (r0 == r6) goto L8f
            r6 = 123(0x7b, float:1.72E-43)
            if (r0 == r6) goto L8b
            goto Lc7
        L8b:
            r5.s(r3)
            goto Lc7
        L8f:
            r5.s(r4)
            goto Lc7
        L93:
            boolean r2 = r5.f(r3)
            goto Lc7
        L98:
            boolean r2 = r5.f(r4)
            goto Lc7
        L9d:
            boolean r6 = r6.isShiftPressed()
            if (r6 == 0) goto La4
            r3 = r4
        La4:
            r5.s(r3)
            goto Lc7
        La8:
            boolean r6 = r6.isAltPressed()
            if (r6 == 0) goto Lb3
            boolean r2 = r5.f(r3)
            goto Lc7
        Lb3:
            boolean r2 = r5.a(r3)
            goto Lc7
        Lb8:
            boolean r6 = r6.isAltPressed()
            if (r6 == 0) goto Lc3
            boolean r2 = r5.f(r4)
            goto Lc7
        Lc3:
            boolean r2 = r5.a(r4)
        Lc7:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.d(android.view.KeyEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || d(keyEvent);
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f4, float f5, boolean z4) {
        return this.f3140B.a(f4, f5, z4);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f4, float f5) {
        return this.f3140B.b(f4, f5);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i4, int i5, int[] iArr, int[] iArr2) {
        return c(i4, i5, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i4, int i5, int i6, int i7, int[] iArr) {
        return this.f3140B.e(i4, i5, i6, i7, iArr, 0, null);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i4;
        super.draw(canvas);
        int scrollY = getScrollY();
        int i5 = 0;
        if (!this.f3146h.isFinished()) {
            int save = canvas.save();
            int width = getWidth();
            int height = getHeight();
            int min = Math.min(0, scrollY);
            if (getClipToPadding()) {
                width -= getPaddingRight() + getPaddingLeft();
                i4 = getPaddingLeft() + 0;
            } else {
                i4 = 0;
            }
            if (getClipToPadding()) {
                height -= getPaddingBottom() + getPaddingTop();
                min += getPaddingTop();
            }
            canvas.translate(i4, min);
            this.f3146h.setSize(width, height);
            if (this.f3146h.draw(canvas)) {
                WeakHashMap weakHashMap = J.f3079a;
                C0186x.i(this);
            }
            canvas.restoreToCount(save);
        }
        if (this.f3147i.isFinished()) {
            return;
        }
        int save2 = canvas.save();
        int width2 = getWidth();
        int height2 = getHeight();
        int max = Math.max(g(), scrollY) + height2;
        if (getClipToPadding()) {
            width2 -= getPaddingRight() + getPaddingLeft();
            i5 = 0 + getPaddingLeft();
        }
        if (getClipToPadding()) {
            height2 -= getPaddingBottom() + getPaddingTop();
            max -= getPaddingBottom();
        }
        canvas.translate(i5 - width2, max);
        canvas.rotate(180.0f, width2, 0.0f);
        this.f3147i.setSize(width2, height2);
        if (this.f3147i.draw(canvas)) {
            WeakHashMap weakHashMap2 = J.f3079a;
            C0186x.i(this);
        }
        canvas.restoreToCount(save2);
    }

    public final void e(int i4) {
        if (getChildCount() > 0) {
            this.f3145g.fling(getScrollX(), getScrollY(), 0, i4, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
            x(2, 1);
            this.f3163y = getScrollY();
            WeakHashMap weakHashMap = J.f3079a;
            C0186x.i(this);
        }
    }

    public final boolean f(int i4) {
        int childCount;
        boolean z4 = i4 == 130;
        int height = getHeight();
        Rect rect = this.f3144f;
        rect.top = 0;
        rect.bottom = height;
        if (z4 && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            this.f3144f.bottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
            Rect rect2 = this.f3144f;
            rect2.top = rect2.bottom - height;
        }
        Rect rect3 = this.f3144f;
        return t(i4, rect3.top, rect3.bottom);
    }

    public final int g() {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
        }
        return 0;
    }

    @Override // android.view.View
    public final float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        View childAt = getChildAt(0);
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    @Override // android.view.ViewGroup
    public final int getNestedScrollAxes() {
        C0180q c0180q = this.f3139A;
        return c0180q.f3126b | c0180q.f3125a;
    }

    @Override // android.view.View
    public final float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return this.f3140B.f(0) != null;
    }

    public final boolean i(int i4, View view, int i5) {
        view.getDrawingRect(this.f3144f);
        offsetDescendantRectToMyCoords(view, this.f3144f);
        return this.f3144f.bottom + i4 >= getScrollY() && this.f3144f.top - i4 <= getScrollY() + i5;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return this.f3140B.f3123d;
    }

    @Override // androidx.core.view.InterfaceC0178o
    public final void j(View view, View view2, int i4, int i5) {
        C0180q c0180q = this.f3139A;
        if (i5 == 1) {
            c0180q.f3126b = i4;
        } else {
            c0180q.f3125a = i4;
        }
        x(2, i5);
    }

    @Override // androidx.core.view.InterfaceC0178o
    public final void k(View view, int i4) {
        C0180q c0180q = this.f3139A;
        if (i4 == 1) {
            c0180q.f3126b = 0;
        } else {
            c0180q.f3125a = 0;
        }
        z(i4);
    }

    @Override // androidx.core.view.InterfaceC0178o
    public final void l(View view, int i4, int i5, int[] iArr, int i6) {
        c(i4, i5, iArr, null, i6);
    }

    public final void m(int i4, int i5, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i4);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.f3140B.d(scrollY2, i4 - scrollY2, i5, iArr);
    }

    @Override // android.view.ViewGroup
    public final void measureChild(View view, int i4, int i5) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        view.measure(FrameLayout.getChildMeasureSpec(i4, getPaddingRight() + getPaddingLeft(), layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public final void measureChildWithMargins(View view, int i4, int i5, int i6, int i7) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(FrameLayout.getChildMeasureSpec(i4, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i5, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    public final void n(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f3159u) {
            int i4 = actionIndex == 0 ? 1 : 0;
            this.f3148j = (int) motionEvent.getY(i4);
            this.f3159u = motionEvent.getPointerId(i4);
            VelocityTracker velocityTracker = this.f3153o;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    @Override // androidx.core.view.InterfaceC0179p
    public final void o(View view, int i4, int i5, int i6, int i7, int i8, int[] iArr) {
        m(i7, i8, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f3150l = false;
    }

    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        int i4;
        float f4;
        if (motionEvent.getAction() == 8 && !this.f3152n) {
            if (C0175l.a(motionEvent, 2)) {
                f4 = motionEvent.getAxisValue(9);
                i4 = (int) motionEvent.getX();
            } else if (C0175l.a(motionEvent, QuickStepContract.SYSUI_STATE_BACK_DISABLED)) {
                float axisValue = motionEvent.getAxisValue(26);
                i4 = getWidth() / 2;
                f4 = axisValue;
            } else {
                i4 = 0;
                f4 = 0.0f;
            }
            if (f4 != 0.0f) {
                if (this.f3141C == 0.0f) {
                    TypedValue typedValue = new TypedValue();
                    Context context = getContext();
                    if (!context.getTheme().resolveAttribute(16842829, typedValue, true)) {
                        throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
                    }
                    this.f3141C = typedValue.getDimension(context.getResources().getDisplayMetrics());
                }
                u(-((int) (f4 * this.f3141C)), i4, 1, C0175l.a(motionEvent, 8194));
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0104  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onInterceptTouchEvent(android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        int i8;
        super.onLayout(z4, i4, i5, i6, i7);
        int i9 = 0;
        this.f3149k = false;
        View view = this.f3151m;
        if (view != null && h(view, this)) {
            View view2 = this.f3151m;
            view2.getDrawingRect(this.f3144f);
            offsetDescendantRectToMyCoords(view2, this.f3144f);
            int b4 = b(this.f3144f);
            if (b4 != 0) {
                scrollBy(0, b4);
            }
        }
        this.f3151m = null;
        if (!this.f3150l) {
            if (this.f3164z != null) {
                scrollTo(getScrollX(), this.f3164z.f1407d);
                this.f3164z = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                i8 = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            } else {
                i8 = 0;
            }
            int paddingTop = ((i7 - i5) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            if (paddingTop < i8 && scrollY >= 0) {
                i9 = paddingTop + scrollY > i8 ? i8 - paddingTop : scrollY;
            }
            if (i9 != scrollY) {
                scrollTo(getScrollX(), i9);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f3150l = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        super.onMeasure(i4, i5);
        if (this.f3154p && View.MeasureSpec.getMode(i5) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(FrameLayout.getChildMeasureSpec(i4, getPaddingRight() + getPaddingLeft() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f4, float f5, boolean z4) {
        if (z4) {
            return false;
        }
        dispatchNestedFling(0.0f, f5, true);
        e((int) f5);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f4, float f5) {
        return dispatchNestedPreFling(f4, f5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i4, int i5, int[] iArr) {
        l(view, i4, i5, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i4, int i5, int i6, int i7) {
        m(i7, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i4) {
        j(view, view2, i4, 0);
    }

    @Override // android.view.View
    public final void onOverScrolled(int i4, int i5, boolean z4, boolean z5) {
        super.scrollTo(i4, i5);
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i4, Rect rect) {
        if (i4 == 2) {
            i4 = 130;
        } else if (i4 == 1) {
            i4 = 33;
        }
        View findNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, null, i4) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i4);
        if (findNextFocus == null || (!i(0, findNextFocus, getHeight()))) {
            return false;
        }
        return findNextFocus.requestFocus(i4, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof g)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        g gVar = (g) parcelable;
        super.onRestoreInstanceState(gVar.getSuperState());
        this.f3164z = gVar;
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        g gVar = new g(super.onSaveInstanceState());
        gVar.f1407d = getScrollY();
        return gVar;
    }

    @Override // android.view.View
    public final void onScrollChanged(int i4, int i5, int i6, int i7) {
        super.onScrollChanged(i4, i5, i6, i7);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i4, int i5, int i6, int i7) {
        super.onSizeChanged(i4, i5, i6, i7);
        View findFocus = findFocus();
        if (findFocus == null || this == findFocus || !i(0, findFocus, i7)) {
            return;
        }
        findFocus.getDrawingRect(this.f3144f);
        offsetDescendantRectToMyCoords(findFocus, this.f3144f);
        int b4 = b(this.f3144f);
        if (b4 != 0) {
            if (this.f3155q) {
                w(0, b4, false);
            } else {
                scrollBy(0, b4);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i4) {
        return q(view, view2, i4, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        k(view, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01bf  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            Method dump skipped, instructions count: 580
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // androidx.core.view.InterfaceC0178o
    public final void p(View view, int i4, int i5, int i6, int i7, int i8) {
        m(i7, i8, null);
    }

    @Override // androidx.core.view.InterfaceC0178o
    public final boolean q(View view, View view2, int i4, int i5) {
        return (i4 & 2) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean r(int r10, int r11, int r12, int r13) {
        /*
            r9 = this;
            int r0 = r9.getOverScrollMode()
            r9.computeHorizontalScrollRange()
            r9.computeHorizontalScrollExtent()
            r9.computeVerticalScrollRange()
            r9.computeVerticalScrollExtent()
            r1 = 1
            r0 = 0
            int r11 = r11 + r0
            int r12 = r12 + r10
            int r13 = r13 + r0
            if (r11 <= 0) goto L1a
        L17:
            r11 = r0
            r10 = r1
            goto L1e
        L1a:
            if (r11 >= 0) goto L1d
            goto L17
        L1d:
            r10 = r0
        L1e:
            if (r12 <= r13) goto L23
            r12 = r13
        L21:
            r13 = r1
            goto L28
        L23:
            if (r12 >= 0) goto L27
            r12 = r0
            goto L21
        L27:
            r13 = r0
        L28:
            if (r13 == 0) goto L45
            androidx.core.view.n r2 = r9.f3140B
            android.view.ViewParent r2 = r2.f(r1)
            if (r2 == 0) goto L34
            r2 = r1
            goto L35
        L34:
            r2 = r0
        L35:
            if (r2 != 0) goto L45
            android.widget.OverScroller r2 = r9.f3145g
            r5 = 0
            r6 = 0
            r7 = 0
            int r8 = r9.g()
            r3 = r11
            r4 = r12
            r2.springBack(r3, r4, r5, r6, r7, r8)
        L45:
            r9.onOverScrolled(r11, r12, r10, r13)
            if (r10 != 0) goto L4e
            if (r13 == 0) goto L4d
            goto L4e
        L4d:
            r1 = r0
        L4e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.r(int, int, int, int):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        if (this.f3149k) {
            this.f3151m = view2;
        } else {
            view2.getDrawingRect(this.f3144f);
            offsetDescendantRectToMyCoords(view2, this.f3144f);
            int b4 = b(this.f3144f);
            if (b4 != 0) {
                scrollBy(0, b4);
            }
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z4) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int b4 = b(rect);
        boolean z5 = b4 != 0;
        if (z5) {
            if (z4) {
                scrollBy(0, b4);
            } else {
                w(0, b4, false);
            }
        }
        return z5;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z4) {
        VelocityTracker velocityTracker;
        if (z4 && (velocityTracker = this.f3153o) != null) {
            velocityTracker.recycle();
            this.f3153o = null;
        }
        super.requestDisallowInterceptTouchEvent(z4);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.f3149k = true;
        super.requestLayout();
    }

    public final void s(int i4) {
        boolean z4 = i4 == 130;
        int height = getHeight();
        if (z4) {
            this.f3144f.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int paddingBottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
                Rect rect = this.f3144f;
                if (rect.top + height > paddingBottom) {
                    rect.top = paddingBottom - height;
                }
            }
        } else {
            this.f3144f.top = getScrollY() - height;
            Rect rect2 = this.f3144f;
            if (rect2.top < 0) {
                rect2.top = 0;
            }
        }
        Rect rect3 = this.f3144f;
        int i5 = rect3.top;
        int i6 = height + i5;
        rect3.bottom = i6;
        t(i4, i5, i6);
    }

    @Override // android.view.View
    public final void scrollTo(int i4, int i5) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int width2 = childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int height2 = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            if (width >= width2 || i4 < 0) {
                i4 = 0;
            } else if (width + i4 > width2) {
                i4 = width2 - width;
            }
            if (height >= height2 || i5 < 0) {
                i5 = 0;
            } else if (height + i5 > height2) {
                i5 = height2 - height;
            }
            if (i4 == getScrollX() && i5 == getScrollY()) {
                return;
            }
            super.scrollTo(i4, i5);
        }
    }

    @Override // android.view.View
    public final void setNestedScrollingEnabled(boolean z4) {
        C0177n c0177n = this.f3140B;
        if (c0177n.f3123d) {
            WeakHashMap weakHashMap = J.f3079a;
            D.p(c0177n.f3122c);
        }
        c0177n.f3123d = z4;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i4) {
        return x(i4, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        z(0);
    }

    public final boolean t(int i4, int i5, int i6) {
        boolean z4;
        int height = getHeight();
        int scrollY = getScrollY();
        int i7 = height + scrollY;
        boolean z5 = i4 == 33;
        ArrayList focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z6 = false;
        for (int i8 = 0; i8 < size; i8++) {
            View view2 = (View) focusables.get(i8);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i5 < bottom && top < i6) {
                boolean z7 = i5 < top && bottom < i6;
                if (view == null) {
                    view = view2;
                    z6 = z7;
                } else {
                    boolean z8 = (z5 && top < view.getTop()) || (!z5 && bottom > view.getBottom());
                    if (z6) {
                        if (z7) {
                            if (!z8) {
                            }
                            view = view2;
                        }
                    } else if (z7) {
                        view = view2;
                        z6 = true;
                    } else {
                        if (!z8) {
                        }
                        view = view2;
                    }
                }
            }
        }
        if (view == null) {
            view = this;
        }
        if (i5 < scrollY || i6 > i7) {
            u(z5 ? i5 - scrollY : i6 - i7, 0, 1, true);
            z4 = true;
        } else {
            z4 = false;
        }
        if (view != findFocus()) {
            view.requestFocus(i4);
        }
        return z4;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0105  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int u(int r20, int r21, int r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.u(int, int, int, boolean):int");
    }

    public final boolean v(EdgeEffect edgeEffect, int i4) {
        if (i4 > 0) {
            return true;
        }
        float b4 = c.b(edgeEffect) * getHeight();
        double log = Math.log((Math.abs(-i4) * 0.35f) / (this.f3142d * 0.015f));
        double d4 = f3136D;
        return ((float) (Math.exp((d4 / (d4 - 1.0d)) * log) * ((double) (this.f3142d * 0.015f)))) < b4;
    }

    public final void w(int i4, int i5, boolean z4) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f3143e > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            OverScroller overScroller = this.f3145g;
            int scrollX = getScrollX();
            overScroller.startScroll(scrollX, scrollY, 0, Math.max(0, Math.min(i5 + scrollY, Math.max(0, height - height2))) - scrollY, StaggeredWorkspaceAnim.DURATION_MS);
            if (z4) {
                x(2, 1);
            } else {
                z(1);
            }
            this.f3163y = getScrollY();
            WeakHashMap weakHashMap = J.f3079a;
            C0186x.i(this);
        } else {
            if (!this.f3145g.isFinished()) {
                this.f3145g.abortAnimation();
                z(1);
            }
            scrollBy(i4, i5);
        }
        this.f3143e = AnimationUtils.currentAnimationTimeMillis();
    }

    public final boolean x(int i4, int i5) {
        return this.f3140B.g(i4, i5);
    }

    public final boolean y(MotionEvent motionEvent) {
        boolean z4;
        if (c.b(this.f3146h) != 0.0f) {
            c.c(this.f3146h, 0.0f, motionEvent.getX() / getWidth());
            z4 = true;
        } else {
            z4 = false;
        }
        if (c.b(this.f3147i) != 0.0f) {
            c.c(this.f3147i, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
            return true;
        }
        return z4;
    }

    public final void z(int i4) {
        this.f3140B.h(i4);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.nestedScrollViewStyle);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f3144f = new Rect();
        this.f3149k = true;
        this.f3150l = false;
        this.f3151m = null;
        this.f3152n = false;
        this.f3155q = true;
        this.f3159u = -1;
        this.f3160v = new int[2];
        this.f3161w = new int[2];
        this.f3146h = c.a(context, attributeSet);
        this.f3147i = c.a(context, attributeSet);
        this.f3142d = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        this.f3145g = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f3156r = viewConfiguration.getScaledTouchSlop();
        this.f3157s = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f3158t = viewConfiguration.getScaledMaximumFlingVelocity();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f3138F, i4, 0);
        boolean z4 = obtainStyledAttributes.getBoolean(0, false);
        if (z4 != this.f3154p) {
            this.f3154p = z4;
            requestLayout();
        }
        obtainStyledAttributes.recycle();
        this.f3139A = new C0180q();
        this.f3140B = new C0177n(this);
        setNestedScrollingEnabled(true);
        J.h(this, f3137E);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i4) {
        if (getChildCount() <= 0) {
            super.addView(view, i4);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i4, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i4, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }
}
