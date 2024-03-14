package com.google.android.systemui.smartspace;

import K2.A;
import K2.C;
import K2.C0032e;
import K2.E;
import K2.K;
import K2.u;
import K2.v;
import K2.w;
import K2.x;
import L2.a;
import L2.c;
import L2.d;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.app.smartspace.SmartspaceTargetEvent;
import android.content.Context;
import android.database.DataSetObserver;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import com.google.android.systemui.smartspace.uitemplate.BaseTemplateCard;
import j0.AbstractC1098a;
import j0.C1104g;
import j0.C1105h;
import j0.C1108k;
import j0.C1111n;
import java.time.DateTimeException;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;
import kotlin.jvm.internal.h;
import n1.b;
import n1.e;
import n1.f;
/* loaded from: classes.dex */
public class BcSmartspaceView extends FrameLayout implements e {

    /* renamed from: t  reason: collision with root package name */
    public static final boolean f8326t = Log.isLoggable("BcSmartspaceView", 3);

    /* renamed from: d  reason: collision with root package name */
    public f f8327d;

    /* renamed from: e  reason: collision with root package name */
    public b f8328e;

    /* renamed from: f  reason: collision with root package name */
    public final ArraySet f8329f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f8330g;

    /* renamed from: h  reason: collision with root package name */
    public C1111n f8331h;

    /* renamed from: i  reason: collision with root package name */
    public PageIndicator f8332i;

    /* renamed from: j  reason: collision with root package name */
    public int f8333j;

    /* renamed from: k  reason: collision with root package name */
    public float f8334k;

    /* renamed from: l  reason: collision with root package name */
    public Animator f8335l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f8336m;

    /* renamed from: n  reason: collision with root package name */
    public int f8337n;

    /* renamed from: o  reason: collision with root package name */
    public List f8338o;

    /* renamed from: p  reason: collision with root package name */
    public boolean f8339p;

    /* renamed from: q  reason: collision with root package name */
    public final v f8340q;

    /* renamed from: r  reason: collision with root package name */
    public final C f8341r;

    /* renamed from: s  reason: collision with root package name */
    public final w f8342s;

    public BcSmartspaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8328e = new E();
        this.f8329f = new ArraySet();
        this.f8330g = false;
        this.f8333j = 0;
        this.f8334k = 0.0f;
        this.f8336m = false;
        this.f8337n = 0;
        this.f8339p = false;
        this.f8340q = new v(this, new Handler());
        this.f8341r = new C(this, this.f8328e);
        this.f8342s = new w(this);
    }

    @Override // n1.e
    public final void a(List list) {
        int i4;
        Bundle extras;
        List<SmartspaceTarget> targets = list;
        if (f8326t) {
            Log.d("BcSmartspaceView", "@" + Integer.toHexString(hashCode()) + ", onTargetsAvailable called. Callers = " + Debug.getCallers(5));
            StringBuilder sb = new StringBuilder("    targets.size() = ");
            sb.append(list.size());
            Log.d("BcSmartspaceView", sb.toString());
            Log.d("BcSmartspaceView", "    targets = " + list.toString());
        }
        if (this.f8339p || (this.f8337n != 0 && this.f8341r.b() > 1)) {
            this.f8338o = targets;
            return;
        }
        this.f8338o = null;
        boolean isLayoutRtl = isLayoutRtl();
        int i5 = this.f8331h.f10679i;
        if (isLayoutRtl) {
            i4 = this.f8341r.b() - i5;
            ArrayList arrayList = new ArrayList(targets);
            Collections.reverse(arrayList);
            targets = arrayList;
        } else {
            i4 = i5;
        }
        A a4 = (A) this.f8341r.f916d.get(i5);
        BaseTemplateCard baseTemplateCard = a4 != null ? a4.f911d : null;
        A a5 = (A) this.f8341r.f916d.get(i5);
        BcSmartspaceCard bcSmartspaceCard = a5 != null ? a5.f909b : null;
        C c4 = this.f8341r;
        c4.getClass();
        h.e(targets, "targets");
        List list2 = c4.f922j;
        ArrayList arrayList2 = (ArrayList) list2;
        arrayList2.clear();
        List list3 = c4.f923k;
        ArrayList arrayList3 = (ArrayList) list3;
        arrayList3.clear();
        boolean z4 = false;
        c4.f925m = false;
        c4.f936x.getClass();
        for (SmartspaceTarget smartspaceTarget : targets) {
            h.b(smartspaceTarget);
            if (!(smartspaceTarget.getFeatureType() == 34 ? true : z4)) {
                SmartspaceAction baseAction = smartspaceTarget.getBaseAction();
                int i6 = (baseAction == null || (extras = baseAction.getExtras()) == null) ? 3 : extras.getInt("SCREEN_EXTRA", 3);
                if ((i6 & 2) != 0) {
                    arrayList2.add(smartspaceTarget);
                }
                if ((i6 & 1) != 0) {
                    arrayList3.add(smartspaceTarget);
                }
                if (i6 != 3) {
                    c4.f925m = true;
                }
            }
            z4 = false;
        }
        if (!c4.f930r.a()) {
            c4.c(list2);
            c4.c(list3);
        }
        c4.h();
        synchronized (c4) {
            DataSetObserver dataSetObserver = c4.f10635b;
            if (dataSetObserver != null) {
                dataSetObserver.onChanged();
            }
        }
        c4.f10634a.notifyChanged();
        int b4 = this.f8341r.b();
        PageIndicator pageIndicator = this.f8332i;
        if (pageIndicator != null) {
            pageIndicator.a(b4, isLayoutRtl);
        }
        if (isLayoutRtl) {
            g(Math.max(0, Math.min(b4 - 1, b4 - i4)));
        }
        if (this.f8336m) {
            if (baseTemplateCard != null) {
                b(baseTemplateCard);
            } else if (bcSmartspaceCard != null) {
                b(bcSmartspaceCard);
            }
        }
        for (int i7 = 0; i7 < b4; i7++) {
            SmartspaceTarget d4 = this.f8341r.d(i7);
            if (!this.f8329f.contains(d4.getSmartspaceTargetId())) {
                d(d4, i7, BcSmartspaceEvent.SMARTSPACE_CARD_RECEIVED);
                SmartspaceTargetEvent.Builder builder = new SmartspaceTargetEvent.Builder(8);
                builder.setSmartspaceTarget(d4);
                SmartspaceAction baseAction2 = d4.getBaseAction();
                if (baseAction2 != null) {
                    builder.setSmartspaceActionId(baseAction2.getId());
                }
                this.f8327d.a(builder.build());
            }
        }
        this.f8329f.clear();
        this.f8329f.addAll((Collection) this.f8341r.f921i.stream().map(new u(0)).collect(Collectors.toList()));
    }

    public final void b(ConstraintLayout constraintLayout) {
        if (this.f8335l == null && constraintLayout.getParent() == null) {
            constraintLayout.measure(View.MeasureSpec.makeMeasureSpec(this.f8331h.getWidth(), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(this.f8331h.getHeight(), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
            constraintLayout.layout(this.f8331h.getLeft(), this.f8331h.getTop(), this.f8331h.getRight(), this.f8331h.getBottom());
            AnimatorSet animatorSet = new AnimatorSet();
            float dimension = getContext().getResources().getDimension(R.dimen.enhanced_smartspace_dismiss_margin);
            animatorSet.play(ObjectAnimator.ofFloat(constraintLayout, View.TRANSLATION_Y, 0.0f, (-getHeight()) - dimension));
            animatorSet.play(ObjectAnimator.ofFloat(constraintLayout, View.ALPHA, 1.0f, 0.0f));
            animatorSet.play(ObjectAnimator.ofFloat(this.f8331h, View.TRANSLATION_Y, getHeight() + dimension, 0.0f));
            animatorSet.addListener(new x(this, (ViewGroup) this.f8331h.getParent(), constraintLayout));
            this.f8335l = animatorSet;
            animatorSet.start();
        }
    }

    public final void c() {
        SmartspaceTarget d4 = this.f8341r.d(this.f8333j);
        if (d4 == null) {
            Log.w("BcSmartspaceView", "Current card is not present in the Adapter; cannot log.");
        } else {
            d(d4, this.f8333j, BcSmartspaceEvent.SMARTSPACE_CARD_SEEN);
        }
        this.f8341r.f936x.getClass();
    }

    public final void d(SmartspaceTarget smartspaceTarget, int i4, BcSmartspaceEvent bcSmartspaceEvent) {
        int i5;
        if (bcSmartspaceEvent == BcSmartspaceEvent.SMARTSPACE_CARD_RECEIVED) {
            try {
                i5 = (int) Instant.now().minusMillis(smartspaceTarget.getCreationTimeMillis()).toEpochMilli();
            } catch (ArithmeticException | DateTimeException e4) {
                Log.e("BcSmartspaceView", "received_latency_millis will be -1 due to exception ", e4);
                i5 = -1;
            }
        } else {
            i5 = 0;
        }
        boolean a4 = L2.b.a(smartspaceTarget.getTemplateData());
        c cVar = new c();
        cVar.f1304a = K.a(smartspaceTarget);
        cVar.f1308e = smartspaceTarget.getFeatureType();
        C c4 = this.f8341r;
        cVar.f1305b = C0032e.d(c4.f932t, c4.f935w);
        cVar.f1306c = i4;
        cVar.f1307d = this.f8341r.b();
        cVar.f1309f = i5;
        getContext().getPackageManager();
        cVar.f1310g = -1;
        cVar.f1311h = a4 ? L2.b.d(smartspaceTarget.getTemplateData()) : L2.b.c(smartspaceTarget);
        cVar.f1312i = L2.b.b(smartspaceTarget.getTemplateData());
        d dVar = new d(cVar);
        if (a4) {
            L2.b.g(dVar, smartspaceTarget.getTemplateData());
        } else {
            L2.b.f(dVar, smartspaceTarget);
        }
        a.a(bcSmartspaceEvent, dVar);
    }

    public final void e(f fVar) {
        f fVar2 = this.f8327d;
        if (fVar2 != null) {
            fVar2.p(this);
        }
        this.f8327d = fVar;
        fVar.d(this);
        this.f8341r.f931s = this.f8327d;
    }

    public final void f(int i4) {
        C c4 = this.f8341r;
        c4.f928p = i4;
        c4.g();
        PageIndicator pageIndicator = this.f8332i;
        pageIndicator.f8375d = i4;
        for (int i5 = 0; i5 < pageIndicator.getChildCount(); i5++) {
            ((ImageView) pageIndicator.getChildAt(i5)).getDrawable().setTint(pageIndicator.f8375d);
        }
    }

    public final void g(int i4) {
        C1111n c1111n = this.f8331h;
        c1111n.f10689s = false;
        c1111n.v(i4, 0, false, false);
        this.f8332i.b(0.0f, i4);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        C1111n c1111n = this.f8331h;
        C c4 = this.f8341r;
        AbstractC1098a abstractC1098a = c1111n.f10678h;
        if (abstractC1098a != null) {
            synchronized (abstractC1098a) {
                abstractC1098a.f10635b = null;
            }
            c1111n.f10678h.getClass();
            for (int i4 = 0; i4 < c1111n.f10675e.size(); i4++) {
                C1104g c1104g = (C1104g) c1111n.f10675e.get(i4);
                c1111n.f10678h.a(c1111n, c1104g.f10641b, c1104g.f10640a);
            }
            c1111n.f10678h.getClass();
            c1111n.f10675e.clear();
            int i5 = 0;
            while (i5 < c1111n.getChildCount()) {
                if (!((C1105h) c1111n.getChildAt(i5).getLayoutParams()).f10645a) {
                    c1111n.removeViewAt(i5);
                    i5--;
                }
                i5++;
            }
            c1111n.f10679i = 0;
            c1111n.scrollTo(0, 0);
        }
        c1111n.f10678h = c4;
        c1111n.f10674d = 0;
        if (c4 != null) {
            if (c1111n.f10684n == null) {
                c1111n.f10684n = new C1108k(c1111n);
            }
            AbstractC1098a abstractC1098a2 = c1111n.f10678h;
            C1108k c1108k = c1111n.f10684n;
            synchronized (abstractC1098a2) {
                abstractC1098a2.f10635b = c1108k;
            }
            c1111n.f10689s = false;
            boolean z4 = c1111n.f10668K;
            c1111n.f10668K = true;
            c1111n.f10674d = c1111n.f10678h.b();
            if (c1111n.f10680j >= 0) {
                c1111n.f10678h.getClass();
                c1111n.v(c1111n.f10680j, 0, false, true);
                c1111n.f10680j = -1;
                c1111n.f10681k = null;
            } else if (z4) {
                c1111n.requestLayout();
            } else {
                c1111n.r();
            }
        }
        C1111n c1111n2 = this.f8331h;
        w wVar = this.f8342s;
        if (c1111n2.f10671N == null) {
            c1111n2.f10671N = new ArrayList();
        }
        ((ArrayList) c1111n2.f10671N).add(wVar);
        this.f8332i.a(this.f8341r.b(), isLayoutRtl());
        if (TextUtils.equals(this.f8341r.f932t, "lockscreen")) {
            try {
                getContext().getContentResolver().registerContentObserver(Settings.Secure.getUriFor("doze_always_on"), false, this.f8340q, -1);
                Context context = getContext();
                this.f8330g = Settings.Secure.getIntForUser(context.getContentResolver(), "doze_always_on", 0, context.getUserId()) == 1;
            } catch (Exception e4) {
                Log.w("BcSmartspaceView", "Unable to register Doze Always on content observer.", e4);
            }
        }
        f fVar = this.f8327d;
        if (fVar != null) {
            e(fVar);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getContext().getContentResolver().unregisterContentObserver(this.f8340q);
        f fVar = this.f8327d;
        if (fVar != null) {
            fVar.p(this);
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f8331h = (C1111n) findViewById(R.id.smartspace_card_pager);
        this.f8332i = (PageIndicator) findViewById(R.id.smartspace_page_indicator);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        int size = View.MeasureSpec.getSize(i5);
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.enhanced_smartspace_height);
        if (size <= 0 || size >= dimensionPixelSize) {
            super.onMeasure(i4, i5);
            setScaleX(1.0f);
            setScaleY(1.0f);
            resetPivot();
            return;
        }
        float f4 = size;
        float f5 = dimensionPixelSize;
        float f6 = f4 / f5;
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.round(View.MeasureSpec.getSize(i4) / f6), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(dimensionPixelSize, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
        setScaleX(f6);
        setScaleY(f6);
        setPivotX(0.0f);
        setPivotY(f5 / 2.0f);
    }

    @Override // android.view.View
    public final void onVisibilityAggregated(boolean z4) {
        super.onVisibilityAggregated(z4);
        f fVar = this.f8327d;
        if (fVar != null) {
            fVar.a(new SmartspaceTargetEvent.Builder(z4 ? 6 : 7).build());
        }
    }

    @Override // android.view.View
    public final void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f8331h.setOnLongClickListener(onLongClickListener);
    }
}
