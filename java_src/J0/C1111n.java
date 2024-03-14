package j0;

import K2.A;
import K2.AbstractC0041n;
import K2.C;
import K2.O;
import K2.t;
import K2.z;
import android.app.smartspace.SmartspaceTarget;
import android.app.smartspace.SmartspaceUtils;
import android.app.smartspace.uitemplatedata.BaseTemplateData;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.core.view.C0186x;
import androidx.core.view.D;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import com.google.android.systemui.smartspace.BcSmartspaceCard;
import com.google.android.systemui.smartspace.IcuDateTextView;
import com.google.android.systemui.smartspace.uitemplate.BaseTemplateCard;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
/* renamed from: j0.n  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1111n extends ViewGroup {

    /* renamed from: Q  reason: collision with root package name */
    public static final int[] f10655Q = {16842931};

    /* renamed from: R  reason: collision with root package name */
    public static final C1099b f10656R = new C1099b(0);

    /* renamed from: S  reason: collision with root package name */
    public static final animation.InterpolatorC1100c f10657S = new animation.InterpolatorC1100c();

    /* renamed from: A  reason: collision with root package name */
    public float f10658A;

    /* renamed from: B  reason: collision with root package name */
    public float f10659B;

    /* renamed from: C  reason: collision with root package name */
    public float f10660C;

    /* renamed from: D  reason: collision with root package name */
    public float f10661D;

    /* renamed from: E  reason: collision with root package name */
    public int f10662E;

    /* renamed from: F  reason: collision with root package name */
    public VelocityTracker f10663F;

    /* renamed from: G  reason: collision with root package name */
    public int f10664G;

    /* renamed from: H  reason: collision with root package name */
    public int f10665H;

    /* renamed from: I  reason: collision with root package name */
    public int f10666I;

    /* renamed from: J  reason: collision with root package name */
    public int f10667J;

    /* renamed from: K  reason: collision with root package name */
    public boolean f10668K;

    /* renamed from: L  reason: collision with root package name */
    public boolean f10669L;

    /* renamed from: M  reason: collision with root package name */
    public int f10670M;

    /* renamed from: N  reason: collision with root package name */
    public List f10671N;

    /* renamed from: O  reason: collision with root package name */
    public final RunnableC1101d f10672O;

    /* renamed from: P  reason: collision with root package name */
    public int f10673P;

    /* renamed from: d  reason: collision with root package name */
    public int f10674d;

    /* renamed from: e  reason: collision with root package name */
    public final ArrayList f10675e;

    /* renamed from: f  reason: collision with root package name */
    public final C1104g f10676f;

    /* renamed from: g  reason: collision with root package name */
    public final Rect f10677g;

    /* renamed from: h  reason: collision with root package name */
    public AbstractC1098a f10678h;

    /* renamed from: i  reason: collision with root package name */
    public int f10679i;

    /* renamed from: j  reason: collision with root package name */
    public int f10680j;

    /* renamed from: k  reason: collision with root package name */
    public Parcelable f10681k;

    /* renamed from: l  reason: collision with root package name */
    public Scroller f10682l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f10683m;
    public EdgeEffect mLeftEdge;
    public EdgeEffect mRightEdge;

    /* renamed from: n  reason: collision with root package name */
    public C1108k f10684n;

    /* renamed from: o  reason: collision with root package name */
    public float f10685o;

    /* renamed from: p  reason: collision with root package name */
    public float f10686p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f10687q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f10688r;

    /* renamed from: s  reason: collision with root package name */
    public boolean f10689s;

    /* renamed from: t  reason: collision with root package name */
    public final int f10690t;

    /* renamed from: u  reason: collision with root package name */
    public boolean f10691u;

    /* renamed from: v  reason: collision with root package name */
    public boolean f10692v;

    /* renamed from: w  reason: collision with root package name */
    public int f10693w;

    /* renamed from: x  reason: collision with root package name */
    public int f10694x;

    /* renamed from: y  reason: collision with root package name */
    public int f10695y;

    /* renamed from: z  reason: collision with root package name */
    public final boolean f10696z;

    public C1111n(Context context) {
        super(context);
        this.f10675e = new ArrayList();
        this.f10676f = new C1104g();
        this.f10677g = new Rect();
        this.f10680j = -1;
        this.f10681k = null;
        this.f10685o = -3.4028235E38f;
        this.f10686p = Float.MAX_VALUE;
        this.f10690t = 1;
        this.f10696z = true;
        this.f10662E = -1;
        this.f10668K = true;
        this.f10672O = new RunnableC1101d(this);
        this.f10673P = 0;
        l(context);
    }

    public static boolean c(int i4, int i5, int i6, View view, boolean z4) {
        int i7;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i8 = i5 + scrollX;
                if (i8 >= childAt.getLeft() && i8 < childAt.getRight() && (i7 = i6 + scrollY) >= childAt.getTop() && i7 < childAt.getBottom() && c(i4, i8 - childAt.getLeft(), i7 - childAt.getTop(), childAt, true)) {
                    return true;
                }
            }
        }
        return z4 && view.canScrollHorizontally(-i4);
    }

    public final C1104g a(int i4, int i5) {
        BcSmartspaceCard bcSmartspaceCard;
        A a4;
        int a5;
        C1104g c1104g = new C1104g();
        c1104g.f10641b = i4;
        C c4 = (C) this.f10678h;
        c4.getClass();
        SmartspaceTarget smartspaceTarget = (SmartspaceTarget) c4.f921i.get(i4);
        boolean a6 = L2.b.a(smartspaceTarget.getTemplateData());
        z zVar = C.f914y;
        O o4 = c4.f918f;
        O o5 = c4.f917e;
        if (a6) {
            int featureType = smartspaceTarget.getFeatureType();
            Log.i("SsCardPagerAdapter", "Use UI template for the feature: " + featureType);
            BaseTemplateCard baseTemplateCard = o5.a() ? (BaseTemplateCard) c4.f919g.removeReturnOld(smartspaceTarget.getFeatureType()) : null;
            if (baseTemplateCard == null || (o4.a() && !zVar.useRecycledViewForNewTarget(smartspaceTarget, baseTemplateCard.f8387e))) {
                BaseTemplateData templateData = smartspaceTarget.getTemplateData();
                BaseTemplateData.SubItemInfo primaryItem = templateData != null ? templateData.getPrimaryItem() : null;
                int i6 = (primaryItem == null || (SmartspaceUtils.isEmpty(primaryItem.getText()) && primaryItem.getIcon() == null)) ? R.layout.smartspace_base_template_card_with_date : R.layout.smartspace_base_template_card;
                LayoutInflater from = LayoutInflater.from(getContext());
                View inflate = from.inflate(i6, (ViewGroup) this, false);
                kotlin.jvm.internal.h.c(inflate, "null cannot be cast to non-null type com.google.android.systemui.smartspace.uitemplate.BaseTemplateCard");
                BaseTemplateCard baseTemplateCard2 = (BaseTemplateCard) inflate;
                String str = c4.f932t;
                baseTemplateCard2.f8405w = str;
                if (baseTemplateCard2.f8395m != null && TextUtils.equals(str, "lockscreen")) {
                    IcuDateTextView icuDateTextView = baseTemplateCard2.f8395m;
                    if (icuDateTextView.isAttachedToWindow()) {
                        throw new IllegalStateException("Must call before attaching view to window.");
                    }
                    icuDateTextView.f8361k = true;
                }
                if (templateData != null && (a5 = t.a(templateData.getTemplateType())) != 0) {
                    View inflate2 = from.inflate(a5, (ViewGroup) baseTemplateCard2, false);
                    kotlin.jvm.internal.h.c(inflate2, "null cannot be cast to non-null type com.google.android.systemui.smartspace.BcSmartspaceCardSecondary");
                    AbstractC0041n abstractC0041n = (AbstractC0041n) inflate2;
                    Log.i("SsCardPagerAdapter", "Secondary card is found");
                    ViewGroup viewGroup = baseTemplateCard2.f8394l;
                    if (viewGroup != null) {
                        baseTemplateCard2.f8386d = abstractC0041n;
                        t.f(viewGroup, 8);
                        baseTemplateCard2.f8394l.removeAllViews();
                        androidx.constraintlayout.widget.d dVar = new androidx.constraintlayout.widget.d(-2, baseTemplateCard2.getResources().getDimensionPixelSize(R.dimen.enhanced_smartspace_card_height));
                        dVar.setMarginStart(baseTemplateCard2.getResources().getDimensionPixelSize(R.dimen.enhanced_smartspace_secondary_card_start_margin));
                        dVar.f2855t = 0;
                        dVar.f2835i = 0;
                        dVar.f2841l = 0;
                        baseTemplateCard2.f8394l.addView(abstractC0041n, dVar);
                    }
                }
                baseTemplateCard = baseTemplateCard2;
            }
            a4 = new A(i4, null, smartspaceTarget, baseTemplateCard);
            addView(baseTemplateCard);
        } else {
            BcSmartspaceCard bcSmartspaceCard2 = o5.a() ? (BcSmartspaceCard) c4.f920h.removeReturnOld(z.a(smartspaceTarget)) : null;
            if (bcSmartspaceCard2 == null || (o4.a() && !zVar.useRecycledViewForNewTarget(smartspaceTarget, bcSmartspaceCard2.f8271e))) {
                int a7 = z.a(smartspaceTarget);
                LayoutInflater from2 = LayoutInflater.from(getContext());
                int baseLegacyCardRes = zVar.getBaseLegacyCardRes(a7);
                if (baseLegacyCardRes == 0) {
                    Log.w("SsCardPagerAdapter", "No legacy card can be created for feature type: " + a7);
                    bcSmartspaceCard = null;
                } else {
                    View inflate3 = from2.inflate(baseLegacyCardRes, (ViewGroup) this, false);
                    kotlin.jvm.internal.h.c(inflate3, "null cannot be cast to non-null type com.google.android.systemui.smartspace.BcSmartspaceCard");
                    BcSmartspaceCard bcSmartspaceCard3 = (BcSmartspaceCard) inflate3;
                    String str2 = c4.f932t;
                    bcSmartspaceCard3.f8287u = str2;
                    if (bcSmartspaceCard3.f8278l != null && TextUtils.equals(str2, "lockscreen")) {
                        IcuDateTextView icuDateTextView2 = bcSmartspaceCard3.f8278l;
                        if (icuDateTextView2.isAttachedToWindow()) {
                            throw new IllegalStateException("Must call before attaching view to window.");
                        }
                        icuDateTextView2.f8361k = true;
                    }
                    int legacySecondaryCardRes = zVar.getLegacySecondaryCardRes(a7);
                    if (legacySecondaryCardRes != 0) {
                        View inflate4 = from2.inflate(legacySecondaryCardRes, (ViewGroup) bcSmartspaceCard3, false);
                        kotlin.jvm.internal.h.c(inflate4, "null cannot be cast to non-null type com.google.android.systemui.smartspace.BcSmartspaceCardSecondary");
                        AbstractC0041n abstractC0041n2 = (AbstractC0041n) inflate4;
                        ViewGroup viewGroup2 = bcSmartspaceCard3.f8277k;
                        if (viewGroup2 != null) {
                            bcSmartspaceCard3.f8270d = abstractC0041n2;
                            t.f(viewGroup2, 8);
                            bcSmartspaceCard3.f8277k.removeAllViews();
                            androidx.constraintlayout.widget.d dVar2 = new androidx.constraintlayout.widget.d(-2, bcSmartspaceCard3.getResources().getDimensionPixelSize(R.dimen.enhanced_smartspace_card_height));
                            dVar2.setMarginStart(bcSmartspaceCard3.getResources().getDimensionPixelSize(R.dimen.enhanced_smartspace_secondary_card_start_margin));
                            dVar2.f2855t = 0;
                            dVar2.f2835i = 0;
                            dVar2.f2841l = 0;
                            bcSmartspaceCard3.f8277k.addView(abstractC0041n2, dVar2);
                        }
                    }
                    bcSmartspaceCard = bcSmartspaceCard3;
                }
                bcSmartspaceCard2 = bcSmartspaceCard;
            }
            a4 = new A(i4, bcSmartspaceCard2, smartspaceTarget, null);
            if (bcSmartspaceCard2 != null) {
                addView(bcSmartspaceCard2);
            }
        }
        c4.f(a4);
        c4.f916d.put(i4, a4);
        c1104g.f10640a = a4;
        this.f10678h.getClass();
        c1104g.f10643d = 1.0f;
        if (i5 < 0 || i5 >= this.f10675e.size()) {
            this.f10675e.add(c1104g);
        } else {
            this.f10675e.add(i5, c1104g);
        }
        return c1104g;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i4, int i5) {
        C1104g i6;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i7 = 0; i7 < getChildCount(); i7++) {
                View childAt = getChildAt(i7);
                if (childAt.getVisibility() == 0 && (i6 = i(childAt)) != null && i6.f10641b == this.f10679i) {
                    childAt.addFocusables(arrayList, i4, i5);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i5 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addTouchables(ArrayList arrayList) {
        C1104g i4;
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() == 0 && (i4 = i(childAt)) != null && i4.f10641b == this.f10679i) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i4, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        C1105h c1105h = (C1105h) layoutParams;
        boolean z4 = c1105h.f10645a | (view.getClass().getAnnotation(InterfaceC1103f.class) != null);
        c1105h.f10645a = z4;
        if (!this.f10687q) {
            super.addView(view, i4, layoutParams);
        } else if (z4) {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        } else {
            c1105h.f10648d = true;
            addViewInLayout(view, i4, layoutParams);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(int r7) {
        /*
            r6 = this;
            android.view.View r0 = r6.findFocus()
            r1 = 1
            r2 = 0
            if (r0 != r6) goto L9
            goto L63
        L9:
            if (r0 == 0) goto L64
            android.view.ViewParent r3 = r0.getParent()
        Lf:
            boolean r4 = r3 instanceof android.view.ViewGroup
            if (r4 == 0) goto L1c
            if (r3 != r6) goto L17
            r3 = r1
            goto L1d
        L17:
            android.view.ViewParent r3 = r3.getParent()
            goto Lf
        L1c:
            r3 = r2
        L1d:
            if (r3 != 0) goto L64
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.Class r4 = r0.getClass()
            java.lang.String r4 = r4.getSimpleName()
            r3.append(r4)
            android.view.ViewParent r0 = r0.getParent()
        L33:
            boolean r4 = r0 instanceof android.view.ViewGroup
            if (r4 == 0) goto L4c
            java.lang.String r4 = " => "
            r3.append(r4)
            java.lang.Class r4 = r0.getClass()
            java.lang.String r4 = r4.getSimpleName()
            r3.append(r4)
            android.view.ViewParent r0 = r0.getParent()
            goto L33
        L4c:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r4 = "arrowScroll tried to find focus based on non-child current focused view "
            r0.<init>(r4)
            java.lang.String r3 = r3.toString()
            r0.append(r3)
            java.lang.String r0 = r0.toString()
            java.lang.String r3 = "ViewPager"
            android.util.Log.e(r3, r0)
        L63:
            r0 = 0
        L64:
            android.view.FocusFinder r3 = android.view.FocusFinder.getInstance()
            android.view.View r3 = r3.findNextFocus(r6, r0, r7)
            r4 = 66
            r5 = 17
            if (r3 == 0) goto Lbb
            if (r3 == r0) goto Lbb
            if (r7 != r5) goto L9b
            android.graphics.Rect r4 = r6.f10677g
            android.graphics.Rect r4 = r6.g(r3, r4)
            int r4 = r4.left
            android.graphics.Rect r5 = r6.f10677g
            android.graphics.Rect r5 = r6.g(r0, r5)
            int r5 = r5.left
            if (r0 == 0) goto L95
            if (r4 < r5) goto L95
            int r0 = r6.f10679i
            if (r0 <= 0) goto Ld5
            int r0 = r0 - r1
            r6.f10689s = r2
            r6.v(r0, r2, r1, r2)
            goto Ld6
        L95:
            boolean r0 = r3.requestFocus()
        L99:
            r2 = r0
            goto Ld7
        L9b:
            if (r7 != r4) goto Ld7
            android.graphics.Rect r1 = r6.f10677g
            android.graphics.Rect r1 = r6.g(r3, r1)
            int r1 = r1.left
            android.graphics.Rect r2 = r6.f10677g
            android.graphics.Rect r2 = r6.g(r0, r2)
            int r2 = r2.left
            if (r0 == 0) goto Lb6
            if (r1 > r2) goto Lb6
            boolean r0 = r6.o()
            goto L99
        Lb6:
            boolean r0 = r3.requestFocus()
            goto L99
        Lbb:
            if (r7 == r5) goto Lca
            if (r7 != r1) goto Lc0
            goto Lca
        Lc0:
            if (r7 == r4) goto Lc5
            r0 = 2
            if (r7 != r0) goto Ld7
        Lc5:
            boolean r2 = r6.o()
            goto Ld7
        Lca:
            int r0 = r6.f10679i
            if (r0 <= 0) goto Ld5
            int r0 = r0 - r1
            r6.f10689s = r2
            r6.v(r0, r2, r1, r2)
            goto Ld6
        Ld5:
            r1 = r2
        Ld6:
            r2 = r1
        Ld7:
            if (r2 == 0) goto Le0
            int r7 = android.view.SoundEffectConstants.getContantForFocusDirection(r7)
            r6.playSoundEffect(r7)
        Le0:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: j0.C1111n.b(int):boolean");
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i4) {
        if (this.f10678h == null) {
            return false;
        }
        int h4 = h();
        int scrollX = getScrollX();
        return i4 < 0 ? scrollX > ((int) (((float) h4) * this.f10685o)) : i4 > 0 && scrollX < ((int) (((float) h4) * this.f10686p));
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C1105h) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public final void computeScroll() {
        this.f10683m = true;
        if (this.f10682l.isFinished() || !this.f10682l.computeScrollOffset()) {
            d(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f10682l.getCurrX();
        int currY = this.f10682l.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!p(currX)) {
                this.f10682l.abortAnimation();
                scrollTo(0, currY);
            }
        }
        WeakHashMap weakHashMap = J.f3079a;
        C0186x.i(this);
    }

    public final void d(boolean z4) {
        boolean z5 = this.f10673P == 2;
        if (z5) {
            x(false);
            if (!this.f10682l.isFinished()) {
                this.f10682l.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f10682l.getCurrX();
                int currY = this.f10682l.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        p(currX);
                    }
                }
            }
        }
        this.f10689s = false;
        for (int i4 = 0; i4 < this.f10675e.size(); i4++) {
            C1104g c1104g = (C1104g) this.f10675e.get(i4);
            if (c1104g.f10642c) {
                c1104g.f10642c = false;
                z5 = true;
            }
        }
        if (z5) {
            if (!z4) {
                this.f10672O.run();
                return;
            }
            RunnableC1101d runnableC1101d = this.f10672O;
            WeakHashMap weakHashMap = J.f3079a;
            C0186x.j(this, runnableC1101d);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchKeyEvent(android.view.KeyEvent r6) {
        /*
            r5 = this;
            boolean r0 = super.dispatchKeyEvent(r6)
            r1 = 1
            if (r0 != 0) goto L66
            int r0 = r6.getAction()
            r2 = 0
            if (r0 != 0) goto L61
            int r0 = r6.getKeyCode()
            r3 = 21
            r4 = 2
            if (r0 == r3) goto L48
            r3 = 22
            if (r0 == r3) goto L36
            r3 = 61
            if (r0 == r3) goto L20
            goto L61
        L20:
            boolean r0 = r6.hasNoModifiers()
            if (r0 == 0) goto L2b
            boolean r5 = r5.b(r4)
            goto L62
        L2b:
            boolean r6 = r6.hasModifiers(r1)
            if (r6 == 0) goto L61
            boolean r5 = r5.b(r1)
            goto L62
        L36:
            boolean r6 = r6.hasModifiers(r4)
            if (r6 == 0) goto L41
            boolean r5 = r5.o()
            goto L62
        L41:
            r6 = 66
            boolean r5 = r5.b(r6)
            goto L62
        L48:
            boolean r6 = r6.hasModifiers(r4)
            if (r6 == 0) goto L5a
            int r6 = r5.f10679i
            if (r6 <= 0) goto L61
            int r6 = r6 - r1
            r5.f10689s = r2
            r5.v(r6, r2, r1, r2)
            r5 = r1
            goto L62
        L5a:
            r6 = 17
            boolean r5 = r5.b(r6)
            goto L62
        L61:
            r5 = r2
        L62:
            if (r5 == 0) goto L65
            goto L66
        L65:
            r1 = r2
        L66:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: j0.C1111n.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        C1104g i4;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() == 0 && (i4 = i(childAt)) != null && i4.f10641b == this.f10679i && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        AbstractC1098a abstractC1098a;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean z4 = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (abstractC1098a = this.f10678h) != null && abstractC1098a.b() > 1)) {
            if (!this.mLeftEdge.isFinished()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate(getPaddingTop() + (-height), this.f10685o * width);
                this.mLeftEdge.setSize(height, width);
                z4 = false | this.mLeftEdge.draw(canvas);
                canvas.restoreToCount(save);
            }
            if (!this.mRightEdge.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f10686p + 1.0f)) * width2);
                this.mRightEdge.setSize(height2, width2);
                z4 |= this.mRightEdge.draw(canvas);
                canvas.restoreToCount(save2);
            }
        } else {
            this.mLeftEdge.finish();
            this.mRightEdge.finish();
        }
        if (z4) {
            WeakHashMap weakHashMap = J.f3079a;
            C0186x.i(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00b0 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e() {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j0.C1111n.e():void");
    }

    public final void f(int i4) {
        List list = this.f10671N;
        if (list != null) {
            int size = ((ArrayList) list).size();
            for (int i5 = 0; i5 < size; i5++) {
                InterfaceC1107j interfaceC1107j = (InterfaceC1107j) ((ArrayList) this.f10671N).get(i5);
                if (interfaceC1107j != null) {
                    interfaceC1107j.b(i4);
                }
            }
        }
    }

    public final Rect g(View view, Rect rect) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left = viewGroup.getLeft() + rect.left;
            rect.right = viewGroup.getRight() + rect.right;
            rect.top = viewGroup.getTop() + rect.top;
            rect.bottom = viewGroup.getBottom() + rect.bottom;
            parent = viewGroup.getParent();
        }
        return rect;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C1105h();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i4, int i5) {
        throw null;
    }

    public final int h() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    public final C1104g i(View view) {
        for (int i4 = 0; i4 < this.f10675e.size(); i4++) {
            C1104g c1104g = (C1104g) this.f10675e.get(i4);
            AbstractC1098a abstractC1098a = this.f10678h;
            A item = c1104g.f10640a;
            ((C) abstractC1098a).getClass();
            kotlin.jvm.internal.h.e(view, "view");
            kotlin.jvm.internal.h.e(item, "item");
            if (view == item.f909b || view == item.f911d) {
                return c1104g;
            }
        }
        return null;
    }

    public final C1104g j() {
        int i4;
        int h4 = h();
        float f4 = 0.0f;
        float scrollX = h4 > 0 ? getScrollX() / h4 : 0.0f;
        float f5 = h4 > 0 ? 0 / h4 : 0.0f;
        int i5 = -1;
        int i6 = 0;
        boolean z4 = true;
        C1104g c1104g = null;
        float f6 = 0.0f;
        while (i6 < this.f10675e.size()) {
            C1104g c1104g2 = (C1104g) this.f10675e.get(i6);
            if (!z4 && c1104g2.f10641b != (i4 = i5 + 1)) {
                c1104g2 = this.f10676f;
                c1104g2.f10644e = f4 + f6 + f5;
                c1104g2.f10641b = i4;
                this.f10678h.getClass();
                c1104g2.f10643d = 1.0f;
                i6--;
            }
            C1104g c1104g3 = c1104g2;
            f4 = c1104g3.f10644e;
            float f7 = c1104g3.f10643d + f4 + f5;
            if (!z4 && scrollX < f4) {
                return c1104g;
            }
            if (scrollX < f7 || i6 == this.f10675e.size() - 1) {
                return c1104g3;
            }
            i5 = c1104g3.f10641b;
            i6++;
            z4 = false;
            c1104g = c1104g3;
            f6 = c1104g3.f10643d;
        }
        return c1104g;
    }

    public final C1104g k(int i4) {
        for (int i5 = 0; i5 < this.f10675e.size(); i5++) {
            C1104g c1104g = (C1104g) this.f10675e.get(i5);
            if (c1104g.f10641b == i4) {
                return c1104g;
            }
        }
        return null;
    }

    public final void l(Context context) {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        this.f10682l = new Scroller(context, f10657S);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f4 = context.getResources().getDisplayMetrics().density;
        this.f10695y = viewConfiguration.getScaledPagingTouchSlop();
        this.f10664G = (int) (400.0f * f4);
        this.f10665H = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mLeftEdge = new EdgeEffect(context);
        this.mRightEdge = new EdgeEffect(context);
        this.f10666I = (int) (25.0f * f4);
        this.f10667J = (int) (2.0f * f4);
        this.f10693w = (int) (f4 * 16.0f);
        J.h(this, new C1106i(this));
        if (C0186x.b(this) == 0) {
            C0186x.o(this, 1);
        }
        D.l(this, new C1102e(this));
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m(int r12, int r13, float r14) {
        /*
            r11 = this;
            int r13 = r11.f10670M
            r0 = 0
            r1 = 1
            if (r13 <= 0) goto L6b
            int r13 = r11.getScrollX()
            int r2 = r11.getPaddingLeft()
            int r3 = r11.getPaddingRight()
            int r4 = r11.getWidth()
            int r5 = r11.getChildCount()
            r6 = r0
        L1b:
            if (r6 >= r5) goto L6b
            android.view.View r7 = r11.getChildAt(r6)
            android.view.ViewGroup$LayoutParams r8 = r7.getLayoutParams()
            j0.h r8 = (j0.C1105h) r8
            boolean r9 = r8.f10645a
            if (r9 != 0) goto L2c
            goto L68
        L2c:
            int r8 = r8.f10646b
            r8 = r8 & 7
            if (r8 == r1) goto L4d
            r9 = 3
            if (r8 == r9) goto L47
            r9 = 5
            if (r8 == r9) goto L3a
            r8 = r2
            goto L5c
        L3a:
            int r8 = r4 - r3
            int r9 = r7.getMeasuredWidth()
            int r8 = r8 - r9
            int r9 = r7.getMeasuredWidth()
            int r3 = r3 + r9
            goto L59
        L47:
            int r8 = r7.getWidth()
            int r8 = r8 + r2
            goto L5c
        L4d:
            int r8 = r7.getMeasuredWidth()
            int r8 = r4 - r8
            int r8 = r8 / 2
            int r8 = java.lang.Math.max(r8, r2)
        L59:
            r10 = r8
            r8 = r2
            r2 = r10
        L5c:
            int r2 = r2 + r13
            int r9 = r7.getLeft()
            int r2 = r2 - r9
            if (r2 == 0) goto L67
            r7.offsetLeftAndRight(r2)
        L67:
            r2 = r8
        L68:
            int r6 = r6 + 1
            goto L1b
        L6b:
            java.util.List r13 = r11.f10671N
            if (r13 == 0) goto L89
            java.util.ArrayList r13 = (java.util.ArrayList) r13
            int r13 = r13.size()
        L75:
            if (r0 >= r13) goto L89
            java.util.List r2 = r11.f10671N
            java.util.ArrayList r2 = (java.util.ArrayList) r2
            java.lang.Object r2 = r2.get(r0)
            j0.j r2 = (j0.InterfaceC1107j) r2
            if (r2 == 0) goto L86
            r2.c(r12, r14)
        L86:
            int r0 = r0 + 1
            goto L75
        L89:
            r11.f10669L = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: j0.C1111n.m(int, int, float):void");
    }

    public final void n(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f10662E) {
            int i4 = actionIndex == 0 ? 1 : 0;
            this.f10658A = motionEvent.getX(i4);
            this.f10662E = motionEvent.getPointerId(i4);
            VelocityTracker velocityTracker = this.f10663F;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public final boolean o() {
        AbstractC1098a abstractC1098a = this.f10678h;
        if (abstractC1098a == null || this.f10679i >= abstractC1098a.b() - 1) {
            return false;
        }
        this.f10689s = false;
        v(this.f10679i + 1, 0, true, false);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f10668K = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.f10672O);
        Scroller scroller = this.f10682l;
        if (scroller != null && !scroller.isFinished()) {
            this.f10682l.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            t();
            return false;
        }
        if (action != 0) {
            if (this.f10691u) {
                return true;
            }
            if (this.f10692v) {
                return false;
            }
        }
        if (action == 0) {
            float x4 = motionEvent.getX();
            this.f10660C = x4;
            this.f10658A = x4;
            float y4 = motionEvent.getY();
            this.f10661D = y4;
            this.f10659B = y4;
            this.f10662E = motionEvent.getPointerId(0);
            this.f10692v = false;
            this.f10683m = true;
            this.f10682l.computeScrollOffset();
            if (this.f10673P == 2 && Math.abs(this.f10682l.getFinalX() - this.f10682l.getCurrX()) > this.f10667J) {
                this.f10682l.abortAnimation();
                this.f10689s = false;
                r();
                this.f10691u = true;
                ViewParent parent = getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                w(1);
            } else if (N.c.b(this.mLeftEdge) == 0.0f && N.c.b(this.mRightEdge) == 0.0f) {
                d(false);
                this.f10691u = false;
            } else {
                this.f10691u = true;
                w(1);
                if (N.c.b(this.mLeftEdge) != 0.0f) {
                    N.c.c(this.mLeftEdge, 0.0f, 1.0f - (this.f10659B / getHeight()));
                }
                if (N.c.b(this.mRightEdge) != 0.0f) {
                    N.c.c(this.mRightEdge, 0.0f, this.f10659B / getHeight());
                }
            }
        } else if (action == 2) {
            int i4 = this.f10662E;
            if (i4 != -1) {
                int findPointerIndex = motionEvent.findPointerIndex(i4);
                float x5 = motionEvent.getX(findPointerIndex);
                float f4 = x5 - this.f10658A;
                float abs = Math.abs(f4);
                float y5 = motionEvent.getY(findPointerIndex);
                float abs2 = Math.abs(y5 - this.f10661D);
                int i5 = (f4 > 0.0f ? 1 : (f4 == 0.0f ? 0 : -1));
                if (i5 != 0) {
                    float f5 = this.f10658A;
                    if (!(!this.f10696z && ((f5 < ((float) this.f10694x) && i5 > 0) || (f5 > ((float) (getWidth() - this.f10694x)) && f4 < 0.0f))) && c((int) f4, (int) x5, (int) y5, this, false)) {
                        this.f10658A = x5;
                        this.f10659B = y5;
                        this.f10692v = true;
                        return false;
                    }
                }
                float f6 = this.f10695y;
                if (abs > f6 && abs * 0.5f > abs2) {
                    this.f10691u = true;
                    ViewParent parent2 = getParent();
                    if (parent2 != null) {
                        parent2.requestDisallowInterceptTouchEvent(true);
                    }
                    w(1);
                    this.f10658A = i5 > 0 ? this.f10660C + this.f10695y : this.f10660C - this.f10695y;
                    this.f10659B = y5;
                    x(true);
                } else if (abs2 > f6) {
                    this.f10692v = true;
                }
                if (this.f10691u && q(x5, y5)) {
                    WeakHashMap weakHashMap = J.f3079a;
                    C0186x.i(this);
                }
            }
        } else if (action == 6) {
            n(motionEvent);
        }
        if (this.f10663F == null) {
            this.f10663F = VelocityTracker.obtain();
        }
        this.f10663F.addMovement(motionEvent);
        return this.f10691u;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008e  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onLayout(boolean r19, int r20, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j0.C1111n.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    public final void onMeasure(int i4, int i5) {
        C1105h c1105h;
        C1105h c1105h2;
        int i6;
        setMeasuredDimension(ViewGroup.getDefaultSize(0, i4), ViewGroup.getDefaultSize(0, i5));
        int measuredWidth = getMeasuredWidth();
        this.f10694x = Math.min(measuredWidth / 10, this.f10693w);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i7 = 0;
        while (true) {
            boolean z4 = true;
            int i8 = QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE;
            if (i7 >= childCount) {
                break;
            }
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8 && (c1105h2 = (C1105h) childAt.getLayoutParams()) != null && c1105h2.f10645a) {
                int i9 = c1105h2.f10646b;
                int i10 = i9 & 7;
                int i11 = i9 & 112;
                boolean z5 = i11 == 48 || i11 == 80;
                if (i10 != 3 && i10 != 5) {
                    z4 = false;
                }
                int i12 = Integer.MIN_VALUE;
                if (z5) {
                    i6 = Integer.MIN_VALUE;
                    i12 = 1073741824;
                } else {
                    i6 = z4 ? 1073741824 : Integer.MIN_VALUE;
                }
                int i13 = ((ViewGroup.LayoutParams) c1105h2).width;
                if (i13 != -2) {
                    if (i13 == -1) {
                        i13 = paddingLeft;
                    }
                    i12 = 1073741824;
                } else {
                    i13 = paddingLeft;
                }
                int i14 = ((ViewGroup.LayoutParams) c1105h2).height;
                if (i14 == -2) {
                    i14 = measuredHeight;
                    i8 = i6;
                } else if (i14 == -1) {
                    i14 = measuredHeight;
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i13, i12), View.MeasureSpec.makeMeasureSpec(i14, i8));
                if (z5) {
                    measuredHeight -= childAt.getMeasuredHeight();
                } else if (z4) {
                    paddingLeft -= childAt.getMeasuredWidth();
                }
            }
            i7++;
        }
        View.MeasureSpec.makeMeasureSpec(paddingLeft, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredHeight, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE);
        this.f10687q = true;
        r();
        this.f10687q = false;
        int childCount2 = getChildCount();
        for (int i15 = 0; i15 < childCount2; i15++) {
            View childAt2 = getChildAt(i15);
            if (childAt2.getVisibility() != 8 && ((c1105h = (C1105h) childAt2.getLayoutParams()) == null || !c1105h.f10645a)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (paddingLeft * c1105h.f10647c), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), makeMeasureSpec);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i4, Rect rect) {
        int i5;
        int i6;
        int i7;
        C1104g i8;
        int childCount = getChildCount();
        if ((i4 & 2) != 0) {
            i6 = childCount;
            i5 = 0;
            i7 = 1;
        } else {
            i5 = childCount - 1;
            i6 = -1;
            i7 = -1;
        }
        while (i5 != i6) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() == 0 && (i8 = i(childAt)) != null && i8.f10641b == this.f10679i && childAt.requestFocus(i4, rect)) {
                return true;
            }
            i5 += i7;
        }
        return false;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C1110m)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1110m c1110m = (C1110m) parcelable;
        super.onRestoreInstanceState(c1110m.f1528d);
        if (this.f10678h != null) {
            v(c1110m.f10652f, 0, false, true);
            return;
        }
        this.f10680j = c1110m.f10652f;
        this.f10681k = c1110m.f10653g;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        C1110m c1110m = new C1110m(super.onSaveInstanceState());
        c1110m.f10652f = this.f10679i;
        AbstractC1098a abstractC1098a = this.f10678h;
        if (abstractC1098a != null) {
            abstractC1098a.getClass();
            c1110m.f10653g = null;
        }
        return c1110m;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i4, int i5, int i6, int i7) {
        super.onSizeChanged(i4, i5, i6, i7);
        if (i4 != i6) {
            if (i6 > 0 && !this.f10675e.isEmpty()) {
                if (this.f10682l.isFinished()) {
                    scrollTo((int) ((getScrollX() / (((i6 - getPaddingLeft()) - getPaddingRight()) + 0)) * (((i4 - getPaddingLeft()) - getPaddingRight()) + 0)), getScrollY());
                    return;
                } else {
                    this.f10682l.setFinalX(h() * this.f10679i);
                    return;
                }
            }
            C1104g k4 = k(this.f10679i);
            int min = (int) ((k4 != null ? Math.min(k4.f10644e, this.f10686p) : 0.0f) * ((i4 - getPaddingLeft()) - getPaddingRight()));
            if (min != getScrollX()) {
                d(false);
                scrollTo(min, getScrollY());
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractC1098a abstractC1098a;
        int i4;
        ArrayList arrayList;
        boolean z4 = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (abstractC1098a = this.f10678h) == null || abstractC1098a.b() == 0) {
            return false;
        }
        if (this.f10663F == null) {
            this.f10663F = VelocityTracker.obtain();
        }
        this.f10663F.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f10682l.abortAnimation();
            this.f10689s = false;
            r();
            float x4 = motionEvent.getX();
            this.f10660C = x4;
            this.f10658A = x4;
            float y4 = motionEvent.getY();
            this.f10661D = y4;
            this.f10659B = y4;
            this.f10662E = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action == 2) {
                if (!this.f10691u) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.f10662E);
                    if (findPointerIndex == -1) {
                        z4 = t();
                    } else {
                        float x5 = motionEvent.getX(findPointerIndex);
                        float abs = Math.abs(x5 - this.f10658A);
                        float y5 = motionEvent.getY(findPointerIndex);
                        float abs2 = Math.abs(y5 - this.f10659B);
                        if (abs > this.f10695y && abs > abs2) {
                            this.f10691u = true;
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                            float f4 = this.f10660C;
                            this.f10658A = x5 - f4 > 0.0f ? f4 + this.f10695y : f4 - this.f10695y;
                            this.f10659B = y5;
                            w(1);
                            x(true);
                            ViewParent parent2 = getParent();
                            if (parent2 != null) {
                                parent2.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                    }
                }
                if (this.f10691u) {
                    int findPointerIndex2 = motionEvent.findPointerIndex(this.f10662E);
                    z4 = false | q(motionEvent.getX(findPointerIndex2), motionEvent.getY(findPointerIndex2));
                }
            } else if (action != 3) {
                if (action == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    this.f10658A = motionEvent.getX(actionIndex);
                    this.f10662E = motionEvent.getPointerId(actionIndex);
                } else if (action == 6) {
                    n(motionEvent);
                    this.f10658A = motionEvent.getX(motionEvent.findPointerIndex(this.f10662E));
                }
            } else if (this.f10691u) {
                u(this.f10679i, 0, true, false);
                z4 = t();
            }
        } else if (this.f10691u) {
            VelocityTracker velocityTracker = this.f10663F;
            velocityTracker.computeCurrentVelocity(1000, this.f10665H);
            int xVelocity = (int) velocityTracker.getXVelocity(this.f10662E);
            this.f10689s = true;
            int h4 = h();
            int scrollX = getScrollX();
            C1104g j4 = j();
            float f5 = h4;
            int i5 = j4.f10641b;
            float f6 = ((scrollX / f5) - j4.f10644e) / (j4.f10643d + (0 / f5));
            if (Math.abs((int) (motionEvent.getX(motionEvent.findPointerIndex(this.f10662E)) - this.f10660C)) <= this.f10666I || Math.abs(xVelocity) <= this.f10664G || N.c.b(this.mLeftEdge) != 0.0f || N.c.b(this.mRightEdge) != 0.0f) {
                i4 = ((int) (f6 + (i5 >= this.f10679i ? 0.4f : 0.6f))) + i5;
            } else {
                i4 = xVelocity > 0 ? i5 : i5 + 1;
            }
            if (this.f10675e.size() > 0) {
                i4 = Math.max(((C1104g) this.f10675e.get(0)).f10641b, Math.min(i4, ((C1104g) this.f10675e.get(arrayList.size() - 1)).f10641b));
            }
            v(i4, xVelocity, true, true);
            z4 = t();
            if (i4 == i5 && z4) {
                if (N.c.b(this.mRightEdge) != 0.0f) {
                    this.mRightEdge.onAbsorb(-xVelocity);
                } else if (N.c.b(this.mLeftEdge) != 0.0f) {
                    this.mLeftEdge.onAbsorb(xVelocity);
                }
            }
        }
        if (z4) {
            WeakHashMap weakHashMap = J.f3079a;
            C0186x.i(this);
        }
        return true;
    }

    public final boolean p(int i4) {
        if (this.f10675e.size() == 0) {
            if (this.f10668K) {
                return false;
            }
            this.f10669L = false;
            m(0, 0, 0.0f);
            if (this.f10669L) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        C1104g j4 = j();
        int h4 = h();
        int i5 = h4 + 0;
        float f4 = h4;
        int i6 = j4.f10641b;
        float f5 = ((i4 / f4) - j4.f10644e) / (j4.f10643d + (0 / f4));
        this.f10669L = false;
        m(i6, (int) (i5 * f5), f5);
        if (this.f10669L) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    public final boolean q(float f4, float f5) {
        boolean z4;
        float f6 = this.f10658A - f4;
        this.f10658A = f4;
        float height = f5 / getHeight();
        float width = f6 / getWidth();
        float c4 = (N.c.b(this.mLeftEdge) != 0.0f ? -N.c.c(this.mLeftEdge, -width, 1.0f - height) : N.c.b(this.mRightEdge) != 0.0f ? N.c.c(this.mRightEdge, width, height) : 0.0f) * getWidth();
        float f7 = f6 - c4;
        boolean z5 = true;
        boolean z6 = false;
        boolean z7 = c4 != 0.0f;
        if (Math.abs(f7) < 1.0E-4f) {
            return z7;
        }
        float scrollX = getScrollX() + f7;
        float h4 = h();
        float f8 = this.f10685o * h4;
        float f9 = this.f10686p * h4;
        C1104g c1104g = (C1104g) this.f10675e.get(0);
        ArrayList arrayList = this.f10675e;
        C1104g c1104g2 = (C1104g) arrayList.get(arrayList.size() - 1);
        if (c1104g.f10641b != 0) {
            f8 = c1104g.f10644e * h4;
            z4 = false;
        } else {
            z4 = true;
        }
        if (c1104g2.f10641b != this.f10678h.b() - 1) {
            f9 = c1104g2.f10644e * h4;
        } else {
            z6 = true;
        }
        if (scrollX < f8) {
            if (z4) {
                N.c.c(this.mLeftEdge, (f8 - scrollX) / h4, 1.0f - (f5 / getHeight()));
            } else {
                z5 = z7;
            }
            z7 = z5;
            scrollX = f8;
        } else if (scrollX > f9) {
            if (z6) {
                N.c.c(this.mRightEdge, (scrollX - f9) / h4, f5 / getHeight());
            } else {
                z5 = z7;
            }
            z7 = z5;
            scrollX = f9;
        }
        int i4 = (int) scrollX;
        this.f10658A = (scrollX - i4) + this.f10658A;
        scrollTo(i4, getScrollY());
        p(i4);
        return z7;
    }

    public final void r() {
        s(this.f10679i);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.f10687q) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x005a, code lost:
        if (r9 == r10) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void s(int r18) {
        /*
            Method dump skipped, instructions count: 913
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j0.C1111n.s(int):void");
    }

    public final boolean t() {
        this.f10662E = -1;
        this.f10691u = false;
        this.f10692v = false;
        VelocityTracker velocityTracker = this.f10663F;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f10663F = null;
        }
        this.mLeftEdge.onRelease();
        this.mRightEdge.onRelease();
        return (this.mLeftEdge.isFinished() && this.mRightEdge.isFinished()) ? false : true;
    }

    public final void u(int i4, int i5, boolean z4, boolean z5) {
        int scrollX;
        int abs;
        C1104g k4 = k(i4);
        int max = k4 != null ? (int) (Math.max(this.f10685o, Math.min(k4.f10644e, this.f10686p)) * h()) : 0;
        if (!z4) {
            if (z5) {
                f(i4);
            }
            d(false);
            scrollTo(max, 0);
            p(max);
            return;
        }
        if (getChildCount() == 0) {
            x(false);
        } else {
            Scroller scroller = this.f10682l;
            if ((scroller == null || scroller.isFinished()) ? false : true) {
                scrollX = this.f10683m ? this.f10682l.getCurrX() : this.f10682l.getStartX();
                this.f10682l.abortAnimation();
                x(false);
            } else {
                scrollX = getScrollX();
            }
            int i6 = scrollX;
            int scrollY = getScrollY();
            int i7 = max - i6;
            int i8 = 0 - scrollY;
            if (i7 == 0 && i8 == 0) {
                d(false);
                r();
                w(0);
            } else {
                x(true);
                w(2);
                int h4 = h();
                int i9 = h4 / 2;
                float f4 = h4;
                float f5 = i9;
                float sin = (((float) Math.sin((Math.min(1.0f, (Math.abs(i7) * 1.0f) / f4) - 0.5f) * 0.47123894f)) * f5) + f5;
                int abs2 = Math.abs(i5);
                if (abs2 > 0) {
                    abs = Math.round(Math.abs(sin / abs2) * 1000.0f) * 4;
                } else {
                    this.f10678h.getClass();
                    abs = (int) (((Math.abs(i7) / ((f4 * 1.0f) + 0)) + 1.0f) * 100.0f);
                }
                int min = Math.min(abs, 600);
                this.f10683m = false;
                this.f10682l.startScroll(i6, scrollY, i7, i8, min);
                WeakHashMap weakHashMap = J.f3079a;
                C0186x.i(this);
            }
        }
        if (z5) {
            f(i4);
        }
    }

    public final void v(int i4, int i5, boolean z4, boolean z5) {
        AbstractC1098a abstractC1098a = this.f10678h;
        if (abstractC1098a == null || abstractC1098a.b() <= 0) {
            x(false);
        } else if (z5 || this.f10679i != i4 || this.f10675e.size() == 0) {
            if (i4 < 0) {
                i4 = 0;
            } else if (i4 >= this.f10678h.b()) {
                i4 = this.f10678h.b() - 1;
            }
            int i6 = this.f10690t;
            int i7 = this.f10679i;
            if (i4 > i7 + i6 || i4 < i7 - i6) {
                for (int i8 = 0; i8 < this.f10675e.size(); i8++) {
                    ((C1104g) this.f10675e.get(i8)).f10642c = true;
                }
            }
            boolean z6 = this.f10679i != i4;
            if (!this.f10668K) {
                s(i4);
                u(i4, i5, z4, z6);
                return;
            }
            this.f10679i = i4;
            if (z6) {
                f(i4);
            }
            requestLayout();
        } else {
            x(false);
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == null;
    }

    public final void w(int i4) {
        if (this.f10673P == i4) {
            return;
        }
        this.f10673P = i4;
        List list = this.f10671N;
        if (list != null) {
            int size = ((ArrayList) list).size();
            for (int i5 = 0; i5 < size; i5++) {
                InterfaceC1107j interfaceC1107j = (InterfaceC1107j) ((ArrayList) this.f10671N).get(i5);
                if (interfaceC1107j != null) {
                    interfaceC1107j.a(i4);
                }
            }
        }
    }

    public final void x(boolean z4) {
        if (this.f10688r != z4) {
            this.f10688r = z4;
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C1105h(getContext(), attributeSet);
    }

    public C1111n(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10675e = new ArrayList();
        this.f10676f = new C1104g();
        this.f10677g = new Rect();
        this.f10680j = -1;
        this.f10681k = null;
        this.f10685o = -3.4028235E38f;
        this.f10686p = Float.MAX_VALUE;
        this.f10690t = 1;
        this.f10696z = true;
        this.f10662E = -1;
        this.f10668K = true;
        this.f10672O = new RunnableC1101d(this);
        this.f10673P = 0;
        l(context);
    }
}
