package K2;

import android.app.smartspace.SmartspaceTarget;
import android.app.smartspace.uitemplatedata.BaseTemplateData;
import android.content.ComponentName;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.android.internal.graphics.ColorUtils;
import com.android.launcher3.icons.GraphicsUtils;
import com.google.android.systemui.smartspace.BcSmartspaceCard;
import com.google.android.systemui.smartspace.CardPagerAdapter$TransitionType;
import com.google.android.systemui.smartspace.uitemplate.BaseTemplateCard;
import j0.AbstractC1098a;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class C extends AbstractC1098a {

    /* renamed from: y  reason: collision with root package name */
    public static final z f914y = new z();

    /* renamed from: c  reason: collision with root package name */
    public final View f915c;

    /* renamed from: d  reason: collision with root package name */
    public final SparseArray f916d;

    /* renamed from: e  reason: collision with root package name */
    public final O f917e;

    /* renamed from: f  reason: collision with root package name */
    public final O f918f;

    /* renamed from: g  reason: collision with root package name */
    public final SparseArray f919g;

    /* renamed from: h  reason: collision with root package name */
    public final SparseArray f920h;

    /* renamed from: i  reason: collision with root package name */
    public List f921i;

    /* renamed from: j  reason: collision with root package name */
    public final List f922j;

    /* renamed from: k  reason: collision with root package name */
    public final List f923k;

    /* renamed from: l  reason: collision with root package name */
    public final List f924l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f925m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f926n;

    /* renamed from: o  reason: collision with root package name */
    public final int f927o;

    /* renamed from: p  reason: collision with root package name */
    public int f928p;

    /* renamed from: q  reason: collision with root package name */
    public int f929q;

    /* renamed from: r  reason: collision with root package name */
    public n1.b f930r;

    /* renamed from: s  reason: collision with root package name */
    public n1.f f931s;

    /* renamed from: t  reason: collision with root package name */
    public String f932t;

    /* renamed from: u  reason: collision with root package name */
    public CardPagerAdapter$TransitionType f933u;

    /* renamed from: v  reason: collision with root package name */
    public float f934v;

    /* renamed from: w  reason: collision with root package name */
    public float f935w;

    /* renamed from: x  reason: collision with root package name */
    public final C0028a f936x;

    public C(View root, n1.b configProvider) {
        kotlin.jvm.internal.h.e(root, "root");
        kotlin.jvm.internal.h.e(configProvider, "configProvider");
        this.f915c = root;
        this.f916d = new SparseArray();
        this.f917e = new O("enable_card_recycling");
        this.f918f = new O("enable_reduced_card_recycling");
        this.f919g = new SparseArray();
        this.f920h = new SparseArray();
        this.f921i = new ArrayList();
        this.f922j = new ArrayList();
        this.f923k = new ArrayList();
        this.f924l = new ArrayList();
        this.f927o = -1;
        int attrColor = GraphicsUtils.getAttrColor(16842806, root.getContext());
        this.f928p = attrColor;
        this.f929q = attrColor;
        this.f930r = configProvider;
        this.f933u = CardPagerAdapter$TransitionType.NOT_IN_TRANSITION;
        this.f936x = new C0028a();
    }

    public static /* synthetic */ void getAodTargets$annotations() {
    }

    public static final int getBaseLegacyCardRes(int i4) {
        return f914y.getBaseLegacyCardRes(i4);
    }

    public static /* synthetic */ void getConfigProvider$annotations() {
    }

    public static /* synthetic */ void getDataProvider$annotations() {
    }

    public static /* synthetic */ void getDozeAmount$annotations() {
    }

    public static /* synthetic */ void getHasAodLockscreenTransition$annotations() {
    }

    public static /* synthetic */ void getHasDifferentTargets$annotations() {
    }

    public static /* synthetic */ void getKeyguardBypassEnabled$annotations() {
    }

    public static final int getLegacySecondaryCardRes(int i4) {
        return f914y.getLegacySecondaryCardRes(i4);
    }

    public static /* synthetic */ void getLockscreenTargets$annotations() {
    }

    public static /* synthetic */ void getNextAlarmData$annotations() {
    }

    public static /* synthetic */ void getPrimaryTextColor$annotations() {
    }

    public static /* synthetic */ void getUiSurface$annotations() {
    }

    public static final boolean useRecycledViewForNewTarget(SmartspaceTarget smartspaceTarget, SmartspaceTarget smartspaceTarget2) {
        return f914y.useRecycledViewForNewTarget(smartspaceTarget, smartspaceTarget2);
    }

    @Override // j0.AbstractC1098a
    public final void a(ViewGroup container, int i4, A item) {
        kotlin.jvm.internal.h.e(container, "container");
        kotlin.jvm.internal.h.e(item, "item");
        O o4 = this.f917e;
        BcSmartspaceCard bcSmartspaceCard = item.f909b;
        if (bcSmartspaceCard != null) {
            SmartspaceTarget smartspaceTarget = bcSmartspaceCard.f8271e;
            if (smartspaceTarget != null && o4.a()) {
                this.f920h.put(z.a(smartspaceTarget), bcSmartspaceCard);
            }
            container.removeView(bcSmartspaceCard);
        }
        BaseTemplateCard baseTemplateCard = item.f911d;
        if (baseTemplateCard != null) {
            SmartspaceTarget smartspaceTarget2 = baseTemplateCard.f8387e;
            if (smartspaceTarget2 != null && o4.a()) {
                this.f919g.put(smartspaceTarget2.getFeatureType(), baseTemplateCard);
            }
            container.removeView(baseTemplateCard);
        }
        SparseArray sparseArray = this.f916d;
        if (sparseArray.get(i4) == item) {
            sparseArray.remove(i4);
        }
    }

    @Override // j0.AbstractC1098a
    public final int b() {
        return this.f921i.size();
    }

    public final void c(List list) {
        if (list.isEmpty()) {
            View view = this.f915c;
            list.add(new SmartspaceTarget.Builder("date_card_794317_92634", new ComponentName(view.getContext(), C.class), view.getContext().getUser()).setFeatureType(1).setTemplateData(new BaseTemplateData.Builder(1).build()).build());
        }
    }

    public final SmartspaceTarget d(int i4) {
        if (this.f921i.isEmpty() || i4 < 0 || i4 >= this.f921i.size()) {
            return null;
        }
        return (SmartspaceTarget) this.f921i.get(i4);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean e(java.util.List r4) {
        /*
            r3 = this;
            boolean r0 = r4.isEmpty()
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L22
            int r0 = r4.size()
            if (r0 != r2) goto L1f
            java.lang.Object r4 = r4.get(r1)
            kotlin.jvm.internal.h.b(r4)
            android.app.smartspace.SmartspaceTarget r4 = (android.app.smartspace.SmartspaceTarget) r4
            int r4 = r4.getFeatureType()
            if (r4 != r2) goto L1f
            r4 = r2
            goto L20
        L1f:
            r4 = r1
        L20:
            if (r4 == 0) goto L2c
        L22:
            java.util.List r3 = r3.f924l
            boolean r3 = r3.isEmpty()
            r3 = r3 ^ r2
            if (r3 == 0) goto L2c
            r1 = r2
        L2c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: K2.C.e(java.util.List):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:192:0x0486  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x04c0  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x04d5  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x04e9  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x050b  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x053e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(K2.A r20) {
        /*
            Method dump skipped, instructions count: 1388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: K2.C.f(K2.A):void");
    }

    public final void g() {
        this.f929q = ColorUtils.blendARGB(this.f928p, this.f927o, this.f935w);
        SparseArray sparseArray = this.f916d;
        int size = sparseArray.size();
        for (int i4 = 0; i4 < size; i4++) {
            A a4 = (A) sparseArray.get(sparseArray.keyAt(i4));
            if (a4 != null) {
                BcSmartspaceCard bcSmartspaceCard = a4.f909b;
                if (bcSmartspaceCard != null) {
                    bcSmartspaceCard.v(this.f929q);
                    bcSmartspaceCard.t(this.f935w);
                }
                BaseTemplateCard baseTemplateCard = a4.f911d;
                if (baseTemplateCard != null) {
                    baseTemplateCard.v(this.f929q);
                    baseTemplateCard.u(this.f935w);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x006c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0076 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h() {
        /*
            Method dump skipped, instructions count: 178
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: K2.C.h():void");
    }

    public final void setMediaTarget(SmartspaceTarget smartspaceTarget) {
        List list = this.f924l;
        ((ArrayList) list).clear();
        if (smartspaceTarget != null) {
            ((ArrayList) list).add(smartspaceTarget);
        }
        h();
    }
}
