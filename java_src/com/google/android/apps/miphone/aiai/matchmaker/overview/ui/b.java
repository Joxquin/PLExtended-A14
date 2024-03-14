package com.google.android.apps.miphone.aiai.matchmaker.overview.ui;

import J1.C;
import J1.C0021d;
import J1.C0022e;
import J1.H;
import J1.m;
import J1.n;
import J1.q;
import J1.s;
import J1.t;
import J1.y;
import L1.B;
import L1.C0045a;
import L1.C0046a0;
import L1.C0059n;
import L1.C0060o;
import L1.C0062q;
import L1.C0064t;
import L1.C0067w;
import L1.J;
import L1.K;
import L1.P;
import L1.Y;
import L1.c0;
import L1.j0;
import L1.k0;
import L1.r;
import L1.s0;
import L1.t0;
import L1.u0;
import V1.c;
import V1.u;
import X1.f;
import android.animation.Animator;
import android.content.ComponentName;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Handler;
import android.os.SystemClock;
import android.text.SpannableString;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.launcher3.logging.StatsLogManager;
import com.android.systemui.shared.R;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.EntitiesData;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$SelectionFeedback$SelectionInteraction;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$SelectionFeedback$SelectionType;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$TaskSnapshotFeedback$TaskSnapshotInteraction;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$InteractionType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: A  reason: collision with root package name */
    public C0067w f6442A;

    /* renamed from: a  reason: collision with root package name */
    public final Context f6443a;

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f6444b;

    /* renamed from: c  reason: collision with root package name */
    public final FrameLayout f6445c;

    /* renamed from: d  reason: collision with root package name */
    public final FrameLayout f6446d;

    /* renamed from: e  reason: collision with root package name */
    public final FrameLayout f6447e;

    /* renamed from: f  reason: collision with root package name */
    public final FrameLayout f6448f;

    /* renamed from: g  reason: collision with root package name */
    public final Handler f6449g;

    /* renamed from: h  reason: collision with root package name */
    public final C0046a0 f6450h;

    /* renamed from: i  reason: collision with root package name */
    public final String f6451i;

    /* renamed from: j  reason: collision with root package name */
    public final K1.a f6452j;

    /* renamed from: k  reason: collision with root package name */
    public final u f6453k;

    /* renamed from: l  reason: collision with root package name */
    public final a f6454l;

    /* renamed from: m  reason: collision with root package name */
    public final f f6455m;

    /* renamed from: n  reason: collision with root package name */
    public final RectF f6456n;

    /* renamed from: o  reason: collision with root package name */
    public final int f6457o;

    /* renamed from: p  reason: collision with root package name */
    public final boolean f6458p;

    /* renamed from: q  reason: collision with root package name */
    public j0 f6459q;

    /* renamed from: r  reason: collision with root package name */
    public C0060o f6460r;

    /* renamed from: s  reason: collision with root package name */
    public B f6461s;

    /* renamed from: t  reason: collision with root package name */
    public String f6462t;

    /* renamed from: u  reason: collision with root package name */
    public boolean f6463u;

    /* renamed from: v  reason: collision with root package name */
    public boolean f6464v;

    /* renamed from: w  reason: collision with root package name */
    public List f6465w;

    /* renamed from: x  reason: collision with root package name */
    public X1.u f6466x;

    /* renamed from: y  reason: collision with root package name */
    public float f6467y;

    /* renamed from: z  reason: collision with root package name */
    public final c f6468z;

    public b(Context context, Context context2, FrameLayout frameLayout, C0046a0 c0046a0, Handler handler, f fVar, j0 j0Var, K1.a aVar, u uVar, c cVar) {
        RectF rectF = new RectF();
        this.f6456n = rectF;
        this.f6457o = -1;
        this.f6462t = "null_session_id";
        this.f6464v = false;
        this.f6443a = context;
        this.f6444b = frameLayout;
        this.f6445c = (FrameLayout) frameLayout.findViewById(R.id.selection_container);
        this.f6446d = (FrameLayout) frameLayout.findViewById(R.id.selection_override_container);
        this.f6447e = (FrameLayout) frameLayout.findViewById(R.id.gleam_container);
        FrameLayout frameLayout2 = (FrameLayout) frameLayout.findViewById(R.id.debug_container);
        this.f6448f = frameLayout2;
        this.f6449g = handler;
        this.f6450h = c0046a0;
        this.f6455m = fVar;
        this.f6452j = aVar;
        this.f6453k = uVar;
        this.f6468z = cVar;
        this.f6459q = j0Var;
        this.f6460r = new C0060o(j0Var.f1189a, null, null, c0046a0, new C0062q(context, context2, this, fVar, aVar), -1);
        Resources resources = frameLayout.getResources();
        RectF rectF2 = new RectF();
        rectF2.inset(-resources.getDimension(R.dimen.long_press_detection_size_x), -resources.getDimension(R.dimen.long_press_detection_size_y));
        Locale locale = resources.getConfiguration().getLocales().get(0);
        rectF.set(rectF2);
        this.f6458p = TextUtils.getLayoutDirectionFromLocale(locale) == 1;
        this.f6457o = (int) resources.getDimension(R.dimen.focus_rect_expand_size);
        if (r.f1239a) {
            this.f6454l = new a(context, frameLayout2);
        } else {
            this.f6454l = null;
        }
        int i4 = M1.c.f1362a;
        this.f6451i = "session_overview" + UUID.randomUUID();
    }

    public final void a() {
        P p4;
        M1.b.f("Clearing suggestions.");
        this.f6465w = null;
        C0060o c0060o = this.f6460r;
        c0060o.f1216j = null;
        c0060o.f1217k = null;
        c0060o.f1220n = null;
        ((ArrayList) c0060o.f1209c).clear();
        c0060o.f1210d.clear();
        this.f6463u = false;
        C0046a0 c0046a0 = this.f6450h;
        c0046a0.k(true);
        this.f6445c.removeAllViews();
        this.f6448f.removeAllViews();
        this.f6460r.f1208b.c();
        FrameLayout frameLayout = this.f6446d;
        frameLayout.setOnTouchListener(null);
        frameLayout.setOnLongClickListener(null);
        frameLayout.setVisibility(8);
        synchronized (c0046a0) {
            p4 = c0046a0.f1147j;
        }
        p4.c();
    }

    public final void b(boolean z4, boolean z5) {
        M1.b.f("Complete suggest interaction");
        this.f6450h.k(false);
        this.f6463u = true;
        int i4 = M1.c.f1362a;
        String str = "interaction_" + UUID.randomUUID();
        this.f6462t = str;
        onLongPressedTaskSnapshotSession(str);
        d(z4, z5);
    }

    public final t c(SuggestParcelables$InteractionType suggestParcelables$InteractionType, RectF rectF) {
        t tVar = new t();
        if (rectF != null) {
            tVar.f798h = SuggestParcelables$InteractionType.LONG_PRESS;
            H h4 = new H();
            h4.f697a = rectF.left;
            h4.f698b = rectF.top;
            h4.f699c = rectF.width();
            h4.f700d = rectF.height();
            tVar.f791a = h4;
        } else {
            tVar.f798h = suggestParcelables$InteractionType;
        }
        List list = this.f6465w;
        if (list != null && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            List<MotionEvent> list2 = this.f6465w;
            int i4 = M1.c.f1362a;
            list2.getClass();
            for (MotionEvent motionEvent : list2) {
                C0046a0 c0046a0 = this.f6450h;
                c0046a0.getClass();
                J1.u uVar = new J1.u();
                uVar.f800a = motionEvent.getAction();
                uVar.f801b = motionEvent.getActionButton();
                uVar.f802c = motionEvent.getActionIndex();
                uVar.f803d = motionEvent.getActionMasked();
                uVar.f804e = motionEvent.getButtonState();
                uVar.f805f = motionEvent.getDeviceId();
                uVar.f806g = motionEvent.getDownTime();
                uVar.f822w = motionEvent.getEventTime();
                uVar.f807h = motionEvent.getEdgeFlags();
                uVar.f808i = motionEvent.getFlags();
                uVar.f809j = motionEvent.getOrientation();
                uVar.f810k = motionEvent.getRawX();
                uVar.f811l = motionEvent.getRawY();
                uVar.f812m = motionEvent.getSource();
                uVar.f813n = motionEvent.getToolMajor();
                uVar.f814o = motionEvent.getToolMinor();
                uVar.f815p = motionEvent.getX();
                uVar.f816q = motionEvent.getY();
                uVar.f817r = motionEvent.getXPrecision();
                uVar.f818s = motionEvent.getYPrecision();
                uVar.f819t = new H();
                H h5 = new H();
                RectF rectF2 = c0046a0.f1143f;
                h5.f697a = rectF2.left;
                h5.f698b = rectF2.top;
                h5.f699c = rectF2.width();
                h5.f700d = rectF2.height();
                uVar.f819t = h5;
                PointF pointF = c0046a0.f1144g;
                uVar.f820u = pointF.x;
                uVar.f821v = pointF.y;
                arrayList.add(uVar);
            }
            tVar.f797g = arrayList;
        }
        tVar.f794d = this.f6458p;
        tVar.f799i = this.f6459q.f1191c;
        tVar.f795e = this.f6464v;
        tVar.f796f = 1;
        int i5 = this.f6457o;
        if (i5 > 0) {
            tVar.f792b = true;
            tVar.f793c = i5;
        }
        return tVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v8, types: [L1.d0] */
    public final void d(boolean z4, boolean z5) {
        final b bVar;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        List list;
        RectF rectF;
        int i9;
        J1.B b4;
        List list2;
        int i10;
        final b bVar2 = this;
        if (!bVar2.f6463u || bVar2.f6460r.j()) {
            return;
        }
        ViewGroup viewGroup = null;
        if (bVar2.f6460r.j()) {
            M1.b.d("displayEntities: No content present.", null);
            return;
        }
        C0060o c0060o = bVar2.f6460r;
        c0060o.f1214h = bVar2.f6462t;
        int size = ((ArrayList) c0060o.c()).size();
        M1.b.f("Displaying entities for long-press.");
        int i11 = 0;
        int i12 = 0;
        while (i11 < size) {
            C0060o c0060o2 = bVar2.f6460r;
            final C0060o c0060o3 = new C0060o(c0060o2.f1211e, c0060o2.f1216j, c0060o2.f1218l, c0060o2.f1207a, c0060o2.f1208b, i11);
            c0060o3.b();
            c0060o3.f1214h = c0060o2.f1214h;
            t tVar = c0060o2.f1219m;
            int i13 = M1.c.f1362a;
            tVar.getClass();
            c0060o3.f1219m = tVar;
            if (c0060o3.f1220n != null) {
                boolean k4 = c0060o3.k();
                if (z4 && k4) {
                    bVar2.f6453k.f1860a.logger().log(StatsLogManager.LauncherEvent.LAUNCHER_SELECT_MODE_IMAGE);
                }
                if (k4) {
                    FrameLayout frameLayout = (FrameLayout) View.inflate(bVar2.f6443a, R.layout.image_view, viewGroup);
                    bVar2.f6445c.addView(frameLayout);
                    i12 += ((ArrayList) c0060o3.f1209c).size();
                    final J j4 = new J(frameLayout, c0060o3, bVar2.f6449g);
                    C0060o c0060o4 = j4.f1089b;
                    Iterator it = ((ArrayList) c0060o4.f1209c).iterator();
                    while (it.hasNext()) {
                        J1.B b5 = (J1.B) it.next();
                        SparseArray sparseArray = j4.f1093f;
                        sparseArray.clear();
                        List list3 = b5.f656d;
                        int i14 = M1.c.f1362a;
                        list3.getClass();
                        Iterator it2 = ((ArrayList) list3).iterator();
                        ViewGroup viewGroup2 = viewGroup;
                        while (it2.hasNext()) {
                            RectF rectF2 = new RectF();
                            List list4 = ((C) it2.next()).f673a;
                            list4.getClass();
                            Iterator it3 = ((ArrayList) list4).iterator();
                            while (it3.hasNext()) {
                                y yVar = (y) it3.next();
                                viewGroup2 = viewGroup2;
                                if (viewGroup2 == null) {
                                    RectF rectF3 = new RectF();
                                    C0060o.d(yVar, rectF3);
                                    viewGroup2 = rectF3;
                                }
                                C0060o.d(yVar, rectF2);
                                c0060o4.f1207a.c(rectF2);
                                RectF rectF4 = (RectF) sparseArray.get(yVar.f840d);
                                if (rectF4 == null) {
                                    sparseArray.put(yVar.f840d, new RectF(rectF2));
                                } else {
                                    rectF4.union(rectF2);
                                }
                            }
                        }
                        int i15 = 0;
                        while (i15 < sparseArray.size()) {
                            final RectF rectF5 = new RectF((RectF) sparseArray.valueAt(i15));
                            RectF rectF6 = new RectF(rectF5);
                            if (z5) {
                                i10 = size;
                                Matrix matrix = new Matrix();
                                matrix.setScale(1.25f, 1.25f, rectF6.centerX(), rectF6.centerY());
                                matrix.mapRect(rectF6);
                            } else {
                                rectF5.inset(-j4.f1091d, -j4.f1092e);
                                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) rectF5.width(), (int) rectF5.height());
                                layoutParams.leftMargin = (int) rectF5.left;
                                layoutParams.topMargin = (int) rectF5.top;
                                FrameLayout frameLayout2 = j4.f1088a;
                                i10 = size;
                                final FrameLayout frameLayout3 = (FrameLayout) FrameLayout.inflate(frameLayout2.getContext(), R.layout.image_line_view, viewGroup);
                                frameLayout2.addView(frameLayout3);
                                frameLayout3.setLayoutParams(layoutParams);
                                j4.f1090c.post(new Runnable() { // from class: L1.I
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        J j5 = J.this;
                                        RectF rectF7 = rectF5;
                                        FrameLayout frameLayout4 = frameLayout3;
                                        j5.getClass();
                                        if (frameLayout4.isAttachedToWindow()) {
                                            int width = ((int) rectF7.width()) / 2;
                                            int height = ((int) rectF7.height()) / 2;
                                            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(frameLayout4, width, height, 0.0f, (float) Math.hypot(width, height));
                                            frameLayout4.setVisibility(0);
                                            createCircularReveal.start();
                                        }
                                    }
                                });
                            }
                            C0062q c0062q = c0060o4.f1208b;
                            c0062q.f1234h = b5;
                            c0062q.f1236j = c0060o4;
                            c0062q.f1229c.set(rectF6);
                            c0062q.g();
                            X1.u uVar = c0062q.f1235i;
                            if (uVar != null) {
                                uVar.m(c0062q);
                                c0062q.h();
                            }
                            i15++;
                            size = i10;
                        }
                    }
                } else {
                    i5 = size;
                    if ((c0060o3.j() || c0060o3.f1216j == null || ((ArrayList) c0060o3.f1209c).isEmpty()) ? false : true) {
                        K k5 = new K(bVar2.f6443a);
                        k5.f1094d = new c0(bVar2, k5);
                        bVar2.f6445c.addView(k5, -1, -1);
                        int size2 = i12 + ((ArrayList) c0060o3.f1209c).size();
                        C0046a0 c0046a0 = bVar2.f6450h;
                        C0022e c0022e = c0060o3.f1216j;
                        c0022e.getClass();
                        String str = c0022e.f721a;
                        str.getClass();
                        K1.a aVar = bVar2.f6452j;
                        String str2 = bVar2.f6459q.f1189a;
                        ArrayList arrayList = new ArrayList();
                        t tVar2 = c0060o3.f1219m;
                        J1.B b6 = (J1.B) ((ArrayList) c0060o3.f1209c).get(0);
                        J1.B b7 = (J1.B) ((ArrayList) c0060o3.f1209c).get(0);
                        q qVar = new q();
                        int i16 = b7.f666n;
                        qVar.f768b = i16 == 1 && !b7.f664l;
                        qVar.f767a = i16 == 1 && b7.f664l;
                        qVar.f769c = false;
                        if (b7.f664l) {
                            qVar.f770d = b7.f667o;
                            qVar.f771e = b7.f668p;
                        } else {
                            qVar.f772f = b7.f667o;
                            qVar.f773g = b7.f668p;
                        }
                        m mVar = new m();
                        arrayList.add(mVar);
                        if (tVar2 != null) {
                            mVar.f760c = tVar2;
                        }
                        mVar.f759b = SystemClock.elapsedRealtime();
                        J1.r rVar = new J1.r();
                        C0064t.a(b6, rVar);
                        mVar.f758a = rVar;
                        rVar.f774a = c0060o3.k() ? FeedbackParcelables$SelectionFeedback$SelectionType.IMAGE : FeedbackParcelables$SelectionFeedback$SelectionType.TEXT;
                        rVar.f775b = b6;
                        rVar.f776c = qVar;
                        rVar.f777d = FeedbackParcelables$SelectionFeedback$SelectionInteraction.SELECTION_CONFIRMED;
                        rVar.f778e = b6.f665m;
                        n nVar = new n();
                        nVar.f762b = 0;
                        nVar.f763c = str2;
                        nVar.f761a = arrayList;
                        c0046a0.i(str, aVar, nVar);
                        final u0 u0Var = new u0(bVar2.f6452j, k5, c0060o3, new k0() { // from class: L1.d0
                            @Override // L1.k0
                            public final void a(int i17, int i18, int i19, int i20, int i21, int i22) {
                                com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar3 = com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b.this;
                                bVar3.getClass();
                                C0060o c0060o5 = c0060o3;
                                if (c0060o5.f1216j != null) {
                                    ArrayList arrayList2 = (ArrayList) c0060o5.f1209c;
                                    if (arrayList2.isEmpty()) {
                                        return;
                                    }
                                    if (i18 == i21 && i19 == i22) {
                                        return;
                                    }
                                    C0022e c0022e2 = bVar3.f6460r.f1216j;
                                    int i23 = M1.c.f1362a;
                                    c0022e2.getClass();
                                    String str3 = c0022e2.f721a;
                                    str3.getClass();
                                    String str4 = bVar3.f6459q.f1189a;
                                    ArrayList arrayList3 = new ArrayList();
                                    J1.t tVar3 = c0060o5.f1219m;
                                    J1.B b8 = (J1.B) arrayList2.get(0);
                                    boolean z6 = ((J1.B) arrayList2.get(0)).f664l;
                                    J1.q qVar2 = new J1.q();
                                    qVar2.f768b = i20 == 1 && !z6;
                                    qVar2.f767a = i17 == 1 && z6;
                                    qVar2.f769c = true;
                                    qVar2.f770d = i18;
                                    qVar2.f771e = i19;
                                    qVar2.f772f = i21;
                                    qVar2.f773g = i22;
                                    J1.m mVar2 = new J1.m();
                                    arrayList3.add(mVar2);
                                    if (tVar3 != null) {
                                        mVar2.f760c = tVar3;
                                    }
                                    mVar2.f759b = SystemClock.elapsedRealtime();
                                    J1.r rVar2 = new J1.r();
                                    C0064t.a(b8, rVar2);
                                    mVar2.f758a = rVar2;
                                    rVar2.f774a = c0060o5.k() ? FeedbackParcelables$SelectionFeedback$SelectionType.IMAGE : FeedbackParcelables$SelectionFeedback$SelectionType.TEXT;
                                    rVar2.f775b = b8;
                                    rVar2.f776c = qVar2;
                                    rVar2.f777d = FeedbackParcelables$SelectionFeedback$SelectionInteraction.SELECTION_ADJUSTED;
                                    rVar2.f778e = b8.f665m;
                                    J1.n nVar2 = new J1.n();
                                    nVar2.f762b = 0;
                                    nVar2.f763c = str4;
                                    nVar2.f761a = arrayList3;
                                    bVar3.f6450h.i(str3, bVar3.f6452j, nVar2);
                                }
                            }
                        }, bVar2.f6449g);
                        synchronized (u0Var) {
                            if (u0Var.f1253f == null) {
                                M1.b.d("Empty text container rect.", null);
                                i8 = size2;
                            } else {
                                y yVar2 = null;
                                if (r.f1239a) {
                                    u0Var.f1248a.setBackgroundColor(Color.argb(50, 50, 150, 60));
                                }
                                List list5 = u0Var.f1250c.e().f716a;
                                if (((ArrayList) u0Var.f1250c.f1209c).isEmpty() || (list2 = (b4 = (J1.B) ((ArrayList) u0Var.f1250c.f1209c).get(0)).f656d) == null || ((ArrayList) list2).isEmpty()) {
                                    i6 = -1;
                                    i7 = -1;
                                } else {
                                    List list6 = b4.f656d;
                                    list6.getClass();
                                    List<Integer> list7 = ((C) ((ArrayList) list6).get(0)).f675c;
                                    list7.getClass();
                                    i6 = -1;
                                    i7 = -1;
                                    for (Integer num : list7) {
                                        int intValue = num.intValue();
                                        if (i7 < 0 || i7 > intValue) {
                                            i7 = intValue;
                                        }
                                        if (i6 < 0 || i6 < intValue) {
                                            i6 = intValue;
                                        }
                                    }
                                }
                                RectF rectF7 = new RectF();
                                int i17 = 0;
                                boolean z6 = true;
                                while (true) {
                                    int i18 = M1.c.f1362a;
                                    list5.getClass();
                                    ArrayList arrayList2 = (ArrayList) list5;
                                    if (i17 >= arrayList2.size()) {
                                        break;
                                    }
                                    RectF rectF8 = new RectF();
                                    y yVar3 = (y) arrayList2.get(i17);
                                    y yVar4 = i17 < arrayList2.size() - 1 ? (y) arrayList2.get(i17 + 1) : yVar2;
                                    C0060o c0060o5 = u0Var.f1250c;
                                    c0060o5.getClass();
                                    C0060o.d(yVar3, rectF8);
                                    c0060o5.f1207a.c(rectF8);
                                    RectF rectF9 = (RectF) u0Var.f1250c.f1210d.get(yVar3.f840d);
                                    rectF9.getClass();
                                    boolean z7 = (yVar4 == null || yVar4.f840d == yVar3.f840d) ? false : true;
                                    if (!z7 && yVar4 != null) {
                                        C0060o c0060o6 = u0Var.f1250c;
                                        c0060o6.getClass();
                                        C0060o.d(yVar4, rectF7);
                                        c0060o6.f1207a.c(rectF7);
                                        rectF8.right = rectF7.left;
                                    }
                                    rectF8.top = rectF9.top;
                                    rectF8.bottom = rectF9.bottom;
                                    RectF rectF10 = u0Var.f1253f;
                                    rectF8.offset(-rectF10.left, -rectF10.top);
                                    if (z6) {
                                        int length = u0Var.f1252e.length();
                                        u0Var.f1252e.append(" ");
                                        list = list5;
                                        rectF = rectF7;
                                        i9 = size2;
                                        ((ArrayList) u0Var.f1251d).add(C0045a.a(new RectF(0.0f, 0.0f, rectF8.left, rectF8.height()), i17, false, length, u0Var.f1252e.length()));
                                        z6 = false;
                                    } else {
                                        list = list5;
                                        rectF = rectF7;
                                        i9 = size2;
                                    }
                                    String str3 = yVar3.f838b;
                                    int length2 = u0Var.f1252e.length();
                                    u0Var.f1252e.append(" ");
                                    u0Var.f1252e.append(str3);
                                    u0Var.f1252e.append(" ");
                                    int length3 = u0Var.f1252e.length();
                                    List list8 = u0Var.f1251d;
                                    str3.getClass();
                                    ((ArrayList) list8).add(C0045a.a(rectF8, i17, false, length2, length3));
                                    if (i7 == i17) {
                                        u0Var.f1258k = length2;
                                    }
                                    if (i6 == i17) {
                                        u0Var.f1259l = length3 - 1;
                                    }
                                    if (z7) {
                                        int length4 = u0Var.f1252e.length();
                                        u0Var.f1252e.append(" \n");
                                        int length5 = u0Var.f1252e.length();
                                        ((ArrayList) u0Var.f1251d).add(C0045a.a(new RectF(0.0f, 0.0f, 1.0f, rectF8.height()), i17, false, length4, length5));
                                        u0Var.f1252e.append(" \n");
                                        C0060o c0060o7 = u0Var.f1250c;
                                        yVar4.getClass();
                                        RectF rectF11 = (RectF) c0060o7.f1210d.get(yVar4.f840d);
                                        rectF11.getClass();
                                        float f4 = rectF11.top;
                                        RectF rectF12 = (RectF) u0Var.f1250c.f1210d.get(yVar3.f840d);
                                        rectF12.getClass();
                                        ((ArrayList) u0Var.f1251d).add(C0045a.a(new RectF(0.0f, 0.0f, 1.0f, (f4 - rectF12.bottom) + 1.0f), i17, true, length5, length5 + 2));
                                        z6 = true;
                                    }
                                    i17++;
                                    list5 = list;
                                    rectF7 = rectF;
                                    size2 = i9;
                                    yVar2 = null;
                                }
                                i8 = size2;
                                if (((ArrayList) u0Var.f1251d).isEmpty()) {
                                    u0Var.f1248a.setVisibility(8);
                                } else {
                                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(((int) u0Var.f1253f.width()) + 16, ((int) u0Var.f1253f.height()) + 16);
                                    RectF rectF13 = u0Var.f1253f;
                                    layoutParams2.leftMargin = (int) rectF13.left;
                                    layoutParams2.topMargin = (int) rectF13.top;
                                    u0Var.f1248a.setLayoutParams(layoutParams2);
                                    u0Var.f1257j = new SpannableString(u0Var.f1252e.toString());
                                    Iterator it4 = ((ArrayList) u0Var.f1251d).iterator();
                                    while (it4.hasNext()) {
                                        C0045a c0045a = (C0045a) it4.next();
                                        RectF rectF14 = c0045a.f1133a;
                                        RectF rectF15 = u0Var.f1253f;
                                        rectF14.offset(-rectF15.left, -rectF15.top);
                                        SpannableString spannableString = u0Var.f1257j;
                                        spannableString.getClass();
                                        spannableString.setSpan(c0045a, c0045a.f1135c, c0045a.f1136d, c0045a.f1137e ? 51 : 17);
                                    }
                                    u0Var.f1248a.setText(u0Var.f1257j);
                                    u0Var.f1248a.setVisibility(0);
                                    View.OnLongClickListener onLongClickListener = new View.OnLongClickListener() { // from class: L1.l0
                                        @Override // android.view.View.OnLongClickListener
                                        public final boolean onLongClick(View view) {
                                            u0.this.getClass();
                                            M1.b.f("-- Finished selection.");
                                            return false;
                                        }
                                    };
                                    TextView textView = u0Var.f1248a;
                                    textView.setOnLongClickListener(onLongClickListener);
                                    textView.setOnGenericMotionListener(new View.OnGenericMotionListener() { // from class: L1.m0
                                        @Override // android.view.View.OnGenericMotionListener
                                        public final boolean onGenericMotion(View view, MotionEvent motionEvent) {
                                            u0.this.getClass();
                                            M1.b.f("-- Finished selection.");
                                            return false;
                                        }
                                    });
                                    textView.setOnTouchListener(new View.OnTouchListener() { // from class: L1.n0
                                        @Override // android.view.View.OnTouchListener
                                        public final boolean onTouch(View view, MotionEvent motionEvent) {
                                            u0.this.getClass();
                                            M1.b.f("-- Finished selection.");
                                            return false;
                                        }
                                    });
                                    textView.setOnClickListener(new View.OnClickListener() { // from class: L1.o0
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            u0.this.getClass();
                                            M1.b.f("-- Finished selection.");
                                        }
                                    });
                                    u0Var.f1248a.setTextClassifier(new s0(u0Var));
                                    u0Var.f1248a.setCustomSelectionActionModeCallback(new t0(u0Var));
                                    u0Var.d();
                                    u0Var.c(u0Var.f1258k, u0Var.f1259l);
                                    C0060o c0060o8 = u0Var.f1250c;
                                    int i19 = c0060o8.f1213g + 1;
                                    c0060o8.f1213g = i19;
                                    u0Var.f1260m = i19;
                                }
                            }
                        }
                        i12 = i8;
                    } else {
                        continue;
                    }
                    i11++;
                    viewGroup = null;
                    bVar2 = this;
                    size = i5;
                }
            }
            i5 = size;
            i11++;
            viewGroup = null;
            bVar2 = this;
            size = i5;
        }
        if (i12 <= 0) {
            bVar = this;
            i4 = 0;
            a();
        } else if (z5) {
            bVar = this;
            i4 = 0;
        } else {
            bVar = this;
            FrameLayout frameLayout4 = bVar.f6446d;
            frameLayout4.setLongClickable(true);
            i4 = 0;
            frameLayout4.setVisibility(0);
            frameLayout4.setOnTouchListener(new View.OnTouchListener() { // from class: L1.g0
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar3 = com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b.this;
                    bVar3.getClass();
                    int action = motionEvent.getAction();
                    if (action == 0 || action == 1 || action == 3) {
                        M1.b.f("Canceling secondary selection");
                        bVar3.a();
                    }
                    return view.onTouchEvent(motionEvent);
                }
            });
        }
        a aVar2 = bVar.f6454l;
        if (aVar2 != null) {
            aVar2.f6441m = bVar.f6460r;
            aVar2.f6439k.addView(aVar2);
            aVar2.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            aVar2.f6439k.removeAllViews();
            C0060o c0060o9 = aVar2.f6441m;
            if (c0060o9 == null || c0060o9.f1216j == null) {
                return;
            }
            int i20 = M1.c.f1362a;
            DebugDisplay$DebugLevel debugDisplay$DebugLevel = aVar2.f6440l;
            if (debugDisplay$DebugLevel != DebugDisplay$DebugLevel.RECTS) {
                if (debugDisplay$DebugLevel == DebugDisplay$DebugLevel.RECTS_AND_TEXT) {
                    Iterator it5 = ((ArrayList) c0060o9.c()).iterator();
                    while (it5.hasNext()) {
                        List list9 = ((C0021d) it5.next()).f716a;
                        if (list9 != null) {
                            Iterator it6 = ((ArrayList) list9).iterator();
                            while (it6.hasNext()) {
                                y yVar5 = (y) it6.next();
                                RectF rectF16 = aVar2.f6437i;
                                C0060o.d(yVar5, rectF16);
                                c0060o9.f1207a.c(rectF16);
                                FrameLayout frameLayout5 = aVar2.f6439k;
                                RectF rectF17 = aVar2.f6437i;
                                String str4 = yVar5.f838b;
                                str4.getClass();
                                aVar2.b(frameLayout5, rectF17, str4, aVar2.f6432d, aVar2.f6433e);
                            }
                        }
                    }
                    return;
                }
                return;
            }
            Iterator it7 = ((ArrayList) c0060o9.c()).iterator();
            while (it7.hasNext()) {
                List list10 = ((C0021d) it7.next()).f716a;
                if (list10 != null) {
                    Iterator it8 = ((ArrayList) list10).iterator();
                    while (it8.hasNext()) {
                        y yVar6 = (y) it8.next();
                        RectF rectF18 = aVar2.f6437i;
                        C0060o.d(yVar6, rectF18);
                        c0060o9.f1207a.c(rectF18);
                        RectF rectF19 = aVar2.f6437i;
                        float f5 = -aVar2.f6438j;
                        rectF19.inset(f5, f5);
                        FrameLayout frameLayout6 = aVar2.f6439k;
                        RectF rectF20 = aVar2.f6437i;
                        aVar2.b(frameLayout6, rectF20, "l:" + Integer.toString(yVar6.f840d) + "g:" + yVar6.f842f, i4 % 2 == 0 ? aVar2.f6434f : aVar2.f6435g, aVar2.f6436h);
                        i4++;
                    }
                }
            }
        }
    }

    public final C0067w e() {
        if (this.f6442A == null) {
            this.f6447e.removeAllViews();
            this.f6442A = new C0067w(this, this.f6447e, this.f6466x, this.f6450h, this.f6452j, this.f6453k);
        }
        return this.f6442A;
    }

    public final void f(RectF rectF) {
        C0067w c0067w = this.f6442A;
        if (c0067w != null) {
            boolean z4 = c0067w.f1280n;
            Interpolator interpolator = C0067w.f1265y;
            ViewGroup viewGroup = c0067w.f1268b;
            if (!z4) {
                c0067w.f1280n = true;
                C0059n c0059n = new C0059n(viewGroup.getContext());
                c0067w.f1284r = c0059n;
                c0059n.f1205h = c0067w;
                viewGroup.addView(c0059n, 0);
                C0059n c0059n2 = c0067w.f1284r;
                c0059n2.f1204g = c0067w.f1279m;
                c0059n2.setAlpha(0.0f);
                c0067w.f1284r.animate().alpha(0.4f).setInterpolator(interpolator).setDuration(333L);
            }
            if (rectF != null) {
                FrameLayout frameLayout = c0067w.f1290x;
                if (frameLayout != null) {
                    frameLayout.setVisibility(4);
                }
                if (c0067w.f1281o != null) {
                    if (c0067w.f1282p) {
                        c0067w.b(true);
                    } else {
                        Rect rect = new Rect();
                        rectF.round(rect);
                        Bitmap i4 = c0067w.f1281o.i(rect);
                        ImageView imageView = new ImageView(viewGroup.getContext());
                        imageView.setImageBitmap(i4);
                        imageView.setBackgroundResource(R.drawable.scaled_image_background);
                        imageView.setClipToOutline(true);
                        imageView.setContentDescription(viewGroup.getContext().getString(R.string.image_content_description));
                        viewGroup.addView(imageView);
                        imageView.sendAccessibilityEvent(8);
                        RectF rectF2 = new RectF(rectF);
                        c0067w.f1269c.c(rectF2);
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) rectF2.width(), (int) rectF2.height());
                        layoutParams.leftMargin = (int) rectF2.left;
                        layoutParams.topMargin = (int) rectF2.top;
                        imageView.setLayoutParams(layoutParams);
                        PointF pointF = new PointF();
                        pointF.set(rectF2.centerX(), rectF2.centerY());
                        b bVar = c0067w.f1275i;
                        bVar.f6450h.d(pointF);
                        bVar.g(pointF, false, true);
                        bVar.b(false, true);
                        float dimension = imageView.getResources().getDimension(R.dimen.indicator_max_overlap) * 2.0f;
                        float min = Math.min(Math.min(1.25f, (viewGroup.getWidth() + dimension) / rectF2.width()), Math.min(1.25f, (viewGroup.getHeight() + dimension) / rectF2.height()));
                        imageView.animate().scaleX(min).scaleY(min).setInterpolator(interpolator).setDuration(333L);
                        c0067w.f1282p = true;
                        c0067w.f1283q = imageView;
                    }
                }
                c0067w.f1281o.getClass();
            }
        }
    }

    public final void g(PointF pointF, final boolean z4, final boolean z5) {
        M1.b.f("Start suggest interaction @ " + pointF);
        a();
        C0060o c0060o = this.f6460r;
        final int i4 = c0060o.f1213g + 1;
        c0060o.f1213g = i4;
        RectF rectF = new RectF(this.f6456n);
        rectF.offset(pointF.x, pointF.y);
        final t c4 = c(SuggestParcelables$InteractionType.SELECT_MODE, rectF);
        String str = "Contents new rect: " + rectF;
        if (M1.b.f1361a.f1360a) {
            Log.v("AiAiSuggestUi", str);
        }
        C0046a0 c0046a0 = this.f6450h;
        c0046a0.k(false);
        c0046a0.g(c4, this.f6452j, new Y() { // from class: L1.b0
            @Override // L1.Y
            public final void a(C0022e c0022e) {
                final com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar = com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b.this;
                final int i5 = i4;
                J1.t tVar = c4;
                final boolean z6 = z4;
                final boolean z7 = z5;
                if (bVar.f6460r.i(i5)) {
                    bVar.f6460r.f1219m = tVar;
                    C0046a0 c0046a02 = bVar.f6450h;
                    K1.a aVar = bVar.f6452j;
                    Z z8 = new Z() { // from class: L1.h0
                        @Override // L1.Z
                        public final void a(C0022e c0022e2, EntitiesData entitiesData) {
                            com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar2 = com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b.this;
                            C0060o c0060o2 = bVar2.f6460r;
                            if (c0060o2.a(i5, c0022e2, entitiesData, c0060o2.f1212f)) {
                                bVar2.d(z6, z7);
                            }
                        }
                    };
                    synchronized (c0046a02) {
                        c0046a02.f(c0022e, tVar, aVar, z8, true);
                    }
                    if (c0022e == null || tVar == null) {
                        return;
                    }
                    C0046a0 c0046a03 = bVar.f6450h;
                    int i6 = M1.c.f1362a;
                    String str2 = c0022e.f721a;
                    str2.getClass();
                    K1.a aVar2 = bVar.f6452j;
                    String str3 = bVar.f6459q.f1189a;
                    ArrayList arrayList = new ArrayList();
                    C0060o c0060o2 = bVar.f6460r;
                    J1.m mVar = new J1.m();
                    arrayList.add(mVar);
                    mVar.f760c = tVar;
                    mVar.f759b = SystemClock.elapsedRealtime();
                    J1.r rVar = new J1.r();
                    mVar.f758a = rVar;
                    rVar.f774a = c0060o2.k() ? FeedbackParcelables$SelectionFeedback$SelectionType.IMAGE : FeedbackParcelables$SelectionFeedback$SelectionType.TEXT;
                    rVar.f777d = FeedbackParcelables$SelectionFeedback$SelectionInteraction.SELECTION_INITIATED;
                    J1.n nVar = new J1.n();
                    nVar.f762b = 0;
                    nVar.f763c = str3;
                    nVar.f761a = arrayList;
                    c0046a03.i(str2, aVar2, nVar);
                }
            }
        });
    }

    public void onLongPressedTaskSnapshotSession(String str) {
        ComponentName componentName;
        j0 j0Var = this.f6459q;
        M1.b.c(String.format("SuggestView Long Pressed - OverviewSessionId : %s, TaskSnapshotSessionId : %s, InteractionSessionId  : %s", j0Var.f1189a, j0Var.f1190b, str));
        C0046a0 c0046a0 = this.f6450h;
        String str2 = this.f6459q.f1189a;
        K1.a aVar = this.f6452j;
        ArrayList arrayList = new ArrayList();
        j0 j0Var2 = this.f6459q;
        String str3 = j0Var2.f1189a;
        String str4 = j0Var2.f1190b;
        C0046a0 c0046a02 = this.f6450h;
        synchronized (c0046a02) {
            componentName = c0046a02.f1141d;
        }
        m mVar = new m();
        arrayList.add(mVar);
        mVar.f759b = SystemClock.elapsedRealtime();
        s sVar = new s();
        sVar.f787b = str3;
        sVar.f788c = str4;
        mVar.f758a = sVar;
        sVar.f786a = FeedbackParcelables$TaskSnapshotFeedback$TaskSnapshotInteraction.TASK_SNAPSHOT_LONG_PRESSED;
        sVar.f789d = componentName == null ? "" : componentName.toShortString();
        sVar.f790e = str;
        n nVar = new n();
        nVar.f762b = 0;
        nVar.f763c = str2;
        int i4 = M1.c.f1362a;
        nVar.f761a = arrayList;
        c0046a0.i(str2, aVar, nVar);
    }
}
