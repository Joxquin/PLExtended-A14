package L1;

import J1.C0021d;
import J1.C0022e;
import J1.C0024g;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.Toast;
import com.android.launcher3.logging.StatsLogManager;
import com.android.systemui.shared.R;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$SelectionFeedback$SelectionInteraction;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$SelectionFeedback$SelectionType;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$ContentType;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$InteractionType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final /* synthetic */ class f0 implements Y {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f1173a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b f1174b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f1175c;

    public /* synthetic */ f0(com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar, int i4, int i5) {
        this.f1173a = i5;
        this.f1174b = bVar;
        this.f1175c = i4;
    }

    @Override // L1.Y
    public final void a(C0022e c0022e) {
        com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar;
        Iterator it;
        String str;
        C0021d c0021d;
        String str2;
        int i4;
        C0021d c0021d2;
        C0022e c0022e2 = c0022e;
        boolean z4 = false;
        int i5 = this.f1173a;
        String str3 = "GleamListener is null";
        int i6 = this.f1175c;
        final com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar2 = this.f1174b;
        boolean z5 = true;
        switch (i5) {
            case 0:
                if (bVar2.f6460r.i(i6)) {
                    M1.b.f("Display indicators");
                    List list = c0022e2.f723c;
                    int i7 = M1.c.f1362a;
                    list.getClass();
                    Iterator it2 = ((ArrayList) list).iterator();
                    while (it2.hasNext()) {
                        C0021d c0021d3 = (C0021d) it2.next();
                        C0067w c0067w = bVar2.f6442A;
                        X1.f fVar = bVar2.f6455m;
                        if (c0021d3 == null) {
                            c0067w.getClass();
                        } else {
                            c0067w.f1281o = fVar;
                            List<C0024g> list2 = c0021d3.f717b;
                            int i8 = M1.c.f1362a;
                            list2.getClass();
                            for (C0024g c0024g : list2) {
                                if (c0024g.f738f == SuggestParcelables$InteractionType.OVERVIEW_SHARING ? z5 : z4 ? 1 : 0) {
                                    List<Integer> list3 = c0024g.f733a;
                                    list3.getClass();
                                    if (!list3.isEmpty()) {
                                        X1.u uVar = c0067w.f1267a;
                                        if (uVar == null) {
                                            M1.b.c("GleamListener is null");
                                        } else if (uVar.f2086x) {
                                            uVar.k();
                                        }
                                    }
                                    z4 = z4;
                                    for (Integer num : list3) {
                                        int intValue = num.intValue();
                                        RectF rectF = new RectF();
                                        List list4 = c0021d3.f716a;
                                        list4.getClass();
                                        J1.H h4 = ((J1.y) ((ArrayList) list4).get(intValue)).f837a;
                                        if (h4 != null) {
                                            float f4 = h4.f697a;
                                            float f5 = h4.f698b;
                                            rectF.set(f4, f5, h4.f699c + f4, h4.f700d + f5);
                                        }
                                        C0046a0 c0046a0 = c0067w.f1269c;
                                        c0046a0.c(rectF);
                                        ViewGroup viewGroup = c0067w.f1268b;
                                        Context context = viewGroup.getContext();
                                        ((ArrayList) c0067w.f1278l).add(rectF);
                                        H h5 = new H(context);
                                        viewGroup.addView(h5, z4 ? 1 : 0, new FrameLayout.LayoutParams(-2, -2));
                                        X1.s sVar = c0067w.f1277k;
                                        V1.u uVar2 = c0067w.f1276j;
                                        RectF rectF2 = new RectF(rectF);
                                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) rectF2.width(), (int) rectF2.height());
                                        layoutParams.leftMargin = (int) rectF2.left;
                                        layoutParams.topMargin = (int) rectF2.top;
                                        h5.setLayoutParams(layoutParams);
                                        PointF pointF = new PointF();
                                        h5.setLongClickable(z5);
                                        c0046a0.d(pointF);
                                        c0046a0.e(rectF2);
                                        Rect rect = new Rect();
                                        rectF2.round(rect);
                                        X1.f fVar2 = fVar;
                                        h5.setOnLongClickListener(new C(h5, c0067w, fVar, rect, uVar2, sVar, rectF2));
                                        h5.setOnClickListener(new D(c0067w));
                                        h5.setOnTouchListener(new E(h5, c0067w, fVar2, rect, uVar2));
                                        fVar = fVar2;
                                        z4 = false;
                                        z5 = true;
                                    }
                                }
                            }
                        }
                    }
                    C0067w c0067w2 = bVar2.f6442A;
                    ArrayList arrayList = (ArrayList) c0067w2.f1278l;
                    if (arrayList.isEmpty()) {
                        return;
                    }
                    if (arrayList.size() == 1) {
                        RectF rectF3 = (RectF) arrayList.get(0);
                        if (c0067w2.e(rectF3, 0.15f, 0.15f)) {
                            c0067w2.d(rectF3);
                            return;
                        }
                        return;
                    }
                    RectF rectF4 = new RectF();
                    Iterator it3 = arrayList.iterator();
                    float f6 = 0.0f;
                    while (it3.hasNext()) {
                        RectF rectF5 = (RectF) it3.next();
                        if (c0067w2.e(rectF5, 0.8f, 0.2f)) {
                            float height = rectF5.height() * rectF5.width();
                            int i9 = (height > f6 ? 1 : (height == f6 ? 0 : -1));
                            if (i9 > 0 || (i9 == 0 && rectF5.top < rectF4.top)) {
                                rectF4 = new RectF(rectF5);
                                f6 = height;
                            }
                        }
                    }
                    if (f6 > 0.0f) {
                        c0067w2.d(rectF4);
                        return;
                    }
                    return;
                }
                return;
            default:
                if (bVar2.f6460r.i(i6)) {
                    if (!((c0022e2 == null || c0022e2.f723c == null || TextUtils.isEmpty(c0022e2.f721a)) ? false : true)) {
                        M1.b.d("Unable to obtain any contents", null);
                        return;
                    }
                    Context context2 = bVar2.f6443a;
                    B b4 = new B(context2);
                    bVar2.f6461s = b4;
                    b4.setAlpha(0.2f);
                    bVar2.f6447e.addView(bVar2.f6461s, -1, -1);
                    final B b5 = bVar2.f6461s;
                    b5.f1051l = bVar2.f6467y;
                    V1.c cVar = bVar2.f6468z;
                    b5.f1052m = cVar;
                    cVar.f1810c = b5;
                    V1.b bVar3 = new V1.b(cVar, b5);
                    cVar.f1809b = bVar3;
                    androidx.core.view.J.h(b5, bVar3);
                    b5.f1052m.f1808a = new A() { // from class: L1.y
                        @Override // L1.A
                        public final void a(float f7, float f8) {
                            Iterator it4 = ((ArrayList) B.this.f1047h).iterator();
                            while (it4.hasNext()) {
                                ((A) it4.next()).a(f7, f8);
                            }
                        }
                    };
                    ((ArrayList) bVar2.f6461s.f1047h).add(new A() { // from class: L1.i0
                        @Override // L1.A
                        public final void a(float f7, float f8) {
                            com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar4 = com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b.this;
                            bVar4.getClass();
                            PointF pointF2 = new PointF();
                            pointF2.set(f7, f8);
                            bVar4.f6450h.d(pointF2);
                            bVar4.g(pointF2, true, false);
                            bVar4.b(true, false);
                            bVar4.f6453k.f1860a.logger().log(StatsLogManager.LauncherEvent.LAUNCHER_SELECT_MODE_ITEM);
                        }
                    });
                    List list5 = c0022e2.f723c;
                    int i10 = M1.c.f1362a;
                    list5.getClass();
                    Iterator it4 = ((ArrayList) list5).iterator();
                    int i11 = 0;
                    while (it4.hasNext()) {
                        C0021d c0021d4 = (C0021d) it4.next();
                        C0067w e4 = bVar2.e();
                        B b6 = bVar2.f6461s;
                        int i12 = (int) c0022e2.f722b;
                        String str4 = c0022e2.f721a;
                        str4.getClass();
                        e4.getClass();
                        List<C0024g> list6 = c0021d4.f717b;
                        int i13 = M1.c.f1362a;
                        list6.getClass();
                        for (C0024g c0024g2 : list6) {
                            SuggestParcelables$InteractionType suggestParcelables$InteractionType = c0024g2.f738f;
                            if (suggestParcelables$InteractionType == SuggestParcelables$InteractionType.GLEAM || suggestParcelables$InteractionType == SuggestParcelables$InteractionType.GLEAM_CHIP || suggestParcelables$InteractionType == SuggestParcelables$InteractionType.SELECT_MODE) {
                                SparseArray sparseArray = e4.f1273g;
                                sparseArray.clear();
                                List list7 = c0024g2.f733a;
                                list7.getClass();
                                if (!list7.isEmpty()) {
                                    i11++;
                                    X1.u uVar3 = e4.f1267a;
                                    if (uVar3 == null) {
                                        M1.b.c(str3);
                                    } else if (uVar3.f2086x) {
                                        uVar3.k();
                                    }
                                }
                                Iterator it5 = list7.iterator();
                                while (true) {
                                    boolean hasNext = it5.hasNext();
                                    C0046a0 c0046a02 = e4.f1269c;
                                    bVar = bVar2;
                                    String str5 = "";
                                    if (hasNext) {
                                        int intValue2 = ((Integer) it5.next()).intValue();
                                        RectF rectF6 = new RectF();
                                        Iterator it6 = it4;
                                        List list8 = c0021d4.f716a;
                                        list8.getClass();
                                        J1.y yVar = (J1.y) ((ArrayList) list8).get(intValue2);
                                        J1.H h6 = yVar.f837a;
                                        if (h6 == null) {
                                            str2 = str3;
                                            i4 = i11;
                                            c0021d2 = c0021d4;
                                        } else {
                                            str2 = str3;
                                            float f7 = h6.f697a;
                                            i4 = i11;
                                            float f8 = h6.f698b;
                                            c0021d2 = c0021d4;
                                            rectF6.set(f7, f8, h6.f699c + f7, h6.f700d + f8);
                                        }
                                        c0046a02.c(rectF6);
                                        if (yVar.f839c == SuggestParcelables$ContentType.CONTENT_TYPE_IMAGE) {
                                            str5 = e4.f1272f;
                                        } else {
                                            String str6 = yVar.f838b;
                                            if (str6 != null) {
                                                str5 = str6;
                                            }
                                        }
                                        str5.getClass();
                                        V1.c cVar2 = b6.f1052m;
                                        if (cVar2 != null) {
                                            ArrayList arrayList2 = cVar2.f1811d;
                                            int i14 = cVar2.f1813f;
                                            cVar2.f1813f = i14 + 1;
                                            arrayList2.add(new V1.a(i14, rectF6, str5));
                                        }
                                        RectF rectF7 = (RectF) sparseArray.get(yVar.f840d);
                                        if (rectF7 == null) {
                                            sparseArray.put(yVar.f840d, new RectF(rectF6));
                                        } else {
                                            rectF7.union(rectF6);
                                        }
                                        bVar2 = bVar;
                                        it4 = it6;
                                        str3 = str2;
                                        i11 = i4;
                                        c0021d4 = c0021d2;
                                    } else {
                                        it = it4;
                                        str = str3;
                                        int i15 = i11;
                                        c0021d = c0021d4;
                                        for (int i16 = 0; i16 < sparseArray.size(); i16++) {
                                            RectF rectF8 = new RectF((RectF) sparseArray.valueAt(i16));
                                            rectF8.inset(-e4.f1270d, -e4.f1271e);
                                            b6.f1046g.add(rectF8);
                                            b6.invalidate();
                                            ArrayList arrayList3 = new ArrayList();
                                            FeedbackParcelables$SelectionFeedback$SelectionType feedbackParcelables$SelectionFeedback$SelectionType = FeedbackParcelables$SelectionFeedback$SelectionType.TEXT;
                                            int i17 = feedbackParcelables$SelectionFeedback$SelectionType.value;
                                            J1.m mVar = new J1.m();
                                            arrayList3.add(mVar);
                                            mVar.f759b = SystemClock.elapsedRealtime();
                                            J1.r rVar = new J1.r();
                                            mVar.f758a = rVar;
                                            if (i17 == 0) {
                                                feedbackParcelables$SelectionFeedback$SelectionType = FeedbackParcelables$SelectionFeedback$SelectionType.SELECTION_TYPE_UNKNOWN;
                                            } else if (i17 != 1) {
                                                feedbackParcelables$SelectionFeedback$SelectionType = i17 == 2 ? FeedbackParcelables$SelectionFeedback$SelectionType.IMAGE : null;
                                            }
                                            rVar.f774a = feedbackParcelables$SelectionFeedback$SelectionType;
                                            rVar.f777d = FeedbackParcelables$SelectionFeedback$SelectionInteraction.SELECTION_SUGGESTED;
                                            rVar.f778e = 5;
                                            J1.n nVar = new J1.n();
                                            nVar.f762b = i12;
                                            nVar.f763c = "";
                                            int i18 = M1.c.f1362a;
                                            nVar.f761a = arrayList3;
                                            c0046a02.i(str4, e4.f1274h, nVar);
                                        }
                                        i11 = i15;
                                    }
                                }
                            } else {
                                bVar = bVar2;
                                it = it4;
                                str = str3;
                                c0021d = c0021d4;
                            }
                            bVar2 = bVar;
                            it4 = it;
                            str3 = str;
                            c0021d4 = c0021d;
                        }
                        com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar4 = bVar2;
                        Iterator it7 = it4;
                        String str7 = str3;
                        if (b6.isAttachedToWindow()) {
                            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(b6, B.f1041r, 0.0f, 1.0f);
                            ofFloat.setDuration(667L);
                            ofFloat.setInterpolator(B.f1042s);
                            ofFloat.start();
                        }
                        c0022e2 = c0022e;
                        bVar2 = bVar4;
                        it4 = it7;
                        str3 = str7;
                    }
                    if (i11 == 0) {
                        Toast.makeText(context2, (int) R.string.no_content_in_select_mode, 0).show();
                    }
                    M1.b.f("Total of " + i11 + " gleams selections found.");
                    return;
                }
                return;
        }
    }
}
