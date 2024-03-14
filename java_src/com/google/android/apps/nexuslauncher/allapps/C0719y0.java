package com.google.android.apps.nexuslauncher.allapps;

import X2.AbstractC0117h;
import android.app.PendingIntent;
import android.app.search.Query;
import android.app.search.SearchAction;
import android.app.search.SearchSession;
import android.app.search.SearchTarget;
import android.app.search.SearchTargetEvent;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowInsets;
import android.webkit.URLUtil;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.ConstantItem;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.AllAppsTransitionListener;
import com.android.launcher3.allapps.BaseAllAppsAdapter;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logger.LauncherAtom$Attribute;
import com.android.launcher3.logger.LauncherAtomExtensions$DeviceSearchResultContainer;
import com.android.launcher3.logger.LauncherAtomExtensions$ExtendedContainers;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherLatencyEvent;
import com.google.android.apps.nexuslauncher.search.SearchEditText;
import com.google.protobuf.C0784w;
import f2.C0868K;
import f2.C0882Z;
import f2.C0883a;
import f2.C0884a0;
import f2.C0885b;
import f2.C0889d;
import f2.C0915q;
import f2.C0916q0;
import f2.C0917r;
import f2.C0918r0;
import f2.C0920s0;
import f2.C0921t;
import f2.C0922t0;
import io.grpc.MethodDescriptor$MethodType;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.function.Consumer;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import s.C1391a;
import z0.C1494b;
import z0.C1495c;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.y0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0719y0 extends ContextWrapper implements AllAppsTransitionListener, ExtendedEditText.OnBackKeyListener, DeviceProfile.OnDeviceProfileChangeListener, InterfaceC0689q1, com.google.android.apps.nexuslauncher.m {

    /* renamed from: K  reason: collision with root package name */
    public static final ConstantItem f7256K = LauncherPrefs.backedUpItem("launcher.search_keyboard_close_action", 0, false);

    /* renamed from: L  reason: collision with root package name */
    public static final SearchTargetEvent f7257L = new SearchTargetEvent.Builder(C1495c.a("SURFACE_VISIBLE"), 1).build();

    /* renamed from: M  reason: collision with root package name */
    public static final SearchTargetEvent f7258M = new SearchTargetEvent.Builder(C1495c.a("SURFACE_INVISIBLE"), 8).build();

    /* renamed from: N  reason: collision with root package name */
    public static LooperExecutor f7259N;

    /* renamed from: O  reason: collision with root package name */
    public static LooperExecutor f7260O;

    /* renamed from: A  reason: collision with root package name */
    public long f7261A;

    /* renamed from: B  reason: collision with root package name */
    public long f7262B;

    /* renamed from: C  reason: collision with root package name */
    public final List f7263C;

    /* renamed from: D  reason: collision with root package name */
    public final List f7264D;

    /* renamed from: E  reason: collision with root package name */
    public LayoutInflater f7265E;

    /* renamed from: F  reason: collision with root package name */
    public boolean f7266F;

    /* renamed from: G  reason: collision with root package name */
    public boolean f7267G;

    /* renamed from: H  reason: collision with root package name */
    public final Q f7268H;

    /* renamed from: I  reason: collision with root package name */
    public boolean f7269I;

    /* renamed from: J  reason: collision with root package name */
    public boolean f7270J;

    /* renamed from: d  reason: collision with root package name */
    public final Context f7271d;

    /* renamed from: e  reason: collision with root package name */
    public final HashMap f7272e;

    /* renamed from: f  reason: collision with root package name */
    public final HashMap f7273f;

    /* renamed from: g  reason: collision with root package name */
    public final HashMap f7274g;

    /* renamed from: h  reason: collision with root package name */
    public final HashMap f7275h;

    /* renamed from: i  reason: collision with root package name */
    public final Handler f7276i;

    /* renamed from: j  reason: collision with root package name */
    public final SharedPreferences$OnSharedPreferenceChangeListenerC0725z2 f7277j;

    /* renamed from: k  reason: collision with root package name */
    public final List f7278k;

    /* renamed from: l  reason: collision with root package name */
    public List f7279l;

    /* renamed from: m  reason: collision with root package name */
    public long f7280m;

    /* renamed from: n  reason: collision with root package name */
    public C0707v0 f7281n;

    /* renamed from: o  reason: collision with root package name */
    public final Context f7282o;

    /* renamed from: p  reason: collision with root package name */
    public final C0696s1 f7283p;

    /* renamed from: q  reason: collision with root package name */
    public final g3 f7284q;

    /* renamed from: r  reason: collision with root package name */
    public final T0 f7285r;

    /* renamed from: s  reason: collision with root package name */
    public final A f7286s;

    /* renamed from: t  reason: collision with root package name */
    public OneSearchSessionManager$ZeroEntryState f7287t;

    /* renamed from: u  reason: collision with root package name */
    public int f7288u;

    /* renamed from: v  reason: collision with root package name */
    public final List f7289v;

    /* renamed from: w  reason: collision with root package name */
    public boolean f7290w;

    /* renamed from: x  reason: collision with root package name */
    public boolean f7291x;

    /* renamed from: y  reason: collision with root package name */
    public boolean f7292y;

    /* renamed from: z  reason: collision with root package name */
    public boolean f7293z;

    public C0719y0(Context context) {
        super(context);
        this.f7272e = new HashMap();
        this.f7273f = new HashMap();
        this.f7274g = new HashMap();
        this.f7275h = new HashMap();
        ArrayList arrayList = new ArrayList();
        this.f7278k = arrayList;
        this.f7289v = new ArrayList();
        this.f7263C = new ArrayList();
        this.f7264D = new ArrayList();
        this.f7267G = false;
        this.f7269I = false;
        this.f7270J = false;
        this.f7271d = context;
        Context applicationContext = context.getApplicationContext();
        this.f7282o = applicationContext;
        this.f7287t = OneSearchSessionManager$ZeroEntryState.f6664e;
        C0700t1 c0700t1 = (C0700t1) C0700t1.f7208t.get(context);
        C0696s1 c0696s1 = c0700t1.f7217j;
        this.f7283p = c0696s1;
        this.f7284q = new g3(context, this, c0696s1);
        this.f7285r = new T0(this, c0696s1);
        this.f7286s = new A(this);
        this.f7276i = new Handler(Executors.UI_HELPER_EXECUTOR.getLooper());
        ActivityContext activityContext = (ActivityContext) context;
        this.f7288u = activityContext.getDeviceProfile().numShownAllAppsColumns;
        this.f7277j = new SharedPreferences$OnSharedPreferenceChangeListenerC0725z2(context, this, c0696s1);
        this.f7268H = new Q(StatsLogManager.newInstance(this).latencyLogger());
        arrayList.add(this);
        c0700t1.f7216i.add(this);
        activityContext.addOnDeviceProfileChangeListener(this);
        if (com.google.android.apps.nexuslauncher.c.f7334w.get()) {
            ((com.google.android.apps.nexuslauncher.u) com.google.android.apps.nexuslauncher.u.f7612m.get(applicationContext)).a(this);
        }
    }

    public static C0719y0 f(Context context) {
        if (context instanceof C0719y0) {
            return (C0719y0) context;
        }
        if (context instanceof ContextWrapper) {
            return f(((ContextWrapper) context).getBaseContext());
        }
        throw new IllegalArgumentException("Cannot find BaseSearchContext in parent tree");
    }

    public static LooperExecutor g() {
        if (f7259N == null) {
            f7259N = Executors.getPackageExecutor("com.google.android.googlequicksearchbox");
        }
        return f7259N;
    }

    public static LooperExecutor j() {
        if (f7260O == null) {
            f7260O = Executors.getPackageExecutor("com.google.android.gms");
        }
        return f7260O;
    }

    public static String k(Icon icon, SearchTarget searchTarget) {
        int type = icon.getType();
        if (type == 2 || type == 4 || type == 6) {
            return "icon-request-key-" + icon;
        }
        StringBuilder sb = new StringBuilder("icon-request-key-");
        SearchAction searchAction = searchTarget.getSearchAction();
        String id = searchTarget.getId();
        String string = C1494b.a(searchAction).getString("icon_cache_key");
        if (!TextUtils.isEmpty(string)) {
            id = string;
        }
        sb.append(id);
        return sb.toString();
    }

    public static int r() {
        if (FeatureFlags.USE_SEARCH_REQUEST_TIMEOUT_OVERRIDES.get()) {
            try {
                return Integer.parseInt(Utilities.getSystemProperty("search_request_timeout", "500"));
            } catch (Exception e4) {
                Log.e("SearchSessionManager", "Error getting search request timeout", e4);
                return 200;
            }
        }
        return 200;
    }

    public final void A(ArrayList arrayList) {
        if (M()) {
            C0916q0 h4 = f2.x0.h();
            Iterator it = arrayList.iterator();
            boolean z4 = false;
            C0920s0 c0920s0 = null;
            while (it.hasNext()) {
                BaseAllAppsAdapter.AdapterItem adapterItem = (BaseAllAppsAdapter.AdapterItem) it.next();
                if (adapterItem instanceof C0653h1) {
                    SearchTarget searchTarget = ((C0653h1) adapterItem).f7080a;
                    if (!searchTarget.getLayoutType().equals("empty_divider") && !searchTarget.getLayoutType().equals("section_header")) {
                        if (searchTarget.getResultType() == 131072) {
                            if (c0920s0 == null) {
                                c0920s0 = C0922t0.c();
                                String string = searchTarget.getExtras().getString("response_id");
                                if (string == null) {
                                    string = "";
                                }
                                h4.c(string);
                            }
                            String id = searchTarget.getId();
                            if (id != null) {
                                c0920s0.a(id);
                            }
                            z4 = false;
                        }
                    }
                }
                if (!z4) {
                    if (c0920s0 != null) {
                        C0918r0 e4 = f2.w0.e();
                        e4.a(c0920s0);
                        h4.a(e4);
                        c0920s0 = null;
                    }
                    C0918r0 e5 = f2.w0.e();
                    e5.b(f2.v0.b());
                    h4.a(e5);
                    z4 = true;
                }
            }
            if (c0920s0 != null) {
                C0918r0 e6 = f2.w0.e();
                e6.a(c0920s0);
                h4.a(e6);
            }
            h4.b(SystemClock.elapsedRealtime());
            ((ArrayList) this.f7289v).add((f2.x0) h4.build());
        }
        SearchEditText searchEditText = (SearchEditText) ((ActivityContext) this.f7271d).getAppsView().getSearchUiManager().getEditText();
        if (searchEditText != null) {
            searchEditText.g();
        }
    }

    public final void B() {
        if (this.f7291x) {
            return;
        }
        this.f7291x = true;
        this.f7290w = false;
        z(o(q()), f7257L);
        byte[] bArr = this.f7284q.f7067e;
        if (M()) {
            g().execute(new X(0, this, bArr));
        }
    }

    public final void C() {
        this.f7266F = true;
        SharedPreferences$OnSharedPreferenceChangeListenerC0725z2 sharedPreferences$OnSharedPreferenceChangeListenerC0725z2 = this.f7277j;
        if (sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7310l) {
            sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7303e.unregisterOnSharedPreferenceChangeListener(sharedPreferences$OnSharedPreferenceChangeListenerC0725z2);
            Executors.UI_HELPER_EXECUTOR.execute(new RunnableC0709v2(sharedPreferences$OnSharedPreferenceChangeListenerC0725z2, 3));
            if (com.google.android.apps.nexuslauncher.c.f7334w.get()) {
                ((com.google.android.apps.nexuslauncher.u) com.google.android.apps.nexuslauncher.u.f7612m.get(sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7302d)).c(sharedPreferences$OnSharedPreferenceChangeListenerC0725z2);
            }
        }
        T0 t02 = this.f7285r;
        if (t02.f6876i.f7184g) {
            t02.f6870c.thenAcceptAsync((Consumer) new K0());
        }
        ((C0700t1) C0700t1.f7208t.get(this.f7271d)).f7216i.remove(this);
        this.f7272e.values().forEach(new C0660j0(3));
        this.f7273f.values().forEach(new C0660j0(4));
        ((ActivityContext) this.f7271d).removeOnDeviceProfileChangeListener(this);
        if (com.google.android.apps.nexuslauncher.c.f7334w.get()) {
            ((com.google.android.apps.nexuslauncher.u) com.google.android.apps.nexuslauncher.u.f7612m.get(this.f7282o)).c(this);
        }
    }

    public void D() {
    }

    public void E() {
    }

    public void F() {
    }

    public final void G() {
        C0707v0 c0707v0 = this.f7281n;
        if (c0707v0 != null) {
            c0707v0.stopListening();
            this.f7281n.deleteHost();
            this.f7275h.clear();
            this.f7281n = null;
        }
        this.f7272e.values().forEach(new C0660j0(0));
        this.f7272e.clear();
        this.f7273f.values().forEach(new C0660j0(1));
        this.f7273f.clear();
        this.f7274g.values().forEach(new C0660j0(2));
        this.f7274g.clear();
        if (this.f7261A == 0) {
            this.f7261A = 0L;
        }
        this.f7262B = 0L;
        ((ArrayList) this.f7289v).clear();
        if (this.f7291x) {
            this.f7291x = false;
        }
        ((ArrayList) this.f7263C).clear();
        ((ArrayList) this.f7264D).clear();
        this.f7292y = false;
        this.f7293z = false;
        O();
    }

    public final void H(ArrayList arrayList) {
        List list;
        long j4 = 2000;
        if (this.f7280m - SystemClock.uptimeMillis() < j4 && (list = this.f7279l) != null) {
            this.f7276i.removeCallbacksAndEqualMessages(list);
        }
        List list2 = (List) arrayList.stream().filter(new C0676n0(1)).map(new Y(2)).map(new Y(3)).filter(new C0676n0(2)).filter(new C0676n0(3)).map(new C0628b0(0, this)).collect(Collectors.toList());
        if (!list2.isEmpty()) {
            this.f7276i.postDelayed(new X(2, this, list2), list2, j4);
            this.f7279l = list2;
        }
        this.f7280m = SystemClock.uptimeMillis();
    }

    public final void I(final View view) {
        final String q4 = q();
        if (TextUtils.isEmpty(q4)) {
            if (this.f7291x) {
                return;
            }
            ((UniversalSearchInputView) ((ActivityContext) this.f7271d).getAppsView().getSearchUiManager()).o();
            ((ActivityContext) this.f7271d).getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_ALLAPPS_EMPTY_QUERY_ENTER_KEY_TAP);
        } else if (TextUtils.isEmpty(Utilities.trim(q4))) {
        } else {
            this.f7290w = true;
            final f2.J0 d4 = d();
            g().execute(new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.h0
                @Override // java.lang.Runnable
                public final void run() {
                    C0719y0 c0719y0 = C0719y0.this;
                    View view2 = view;
                    String str = q4;
                    f2.J0 j02 = d4;
                    T0 t02 = c0719y0.f7285r;
                    t02.getClass();
                    if (D2.f6522b) {
                        Log.d("AGASessionSummaryLog", "searchGoogle");
                    }
                    C0882Z d5 = t02.d();
                    f2.E0 f4 = f2.F0.f();
                    f4.a(str);
                    f4.c(SystemClock.elapsedRealtime());
                    f4.b(j02);
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    NexusLauncherLatencyEvent nexusLauncherLatencyEvent = NexusLauncherLatencyEvent.LAUNCHER_LATENCY_SEARCH_GOOGLE_DURATION;
                    if (URLUtil.isValidUrl(str)) {
                        Executors.MAIN_EXECUTOR.execute(new J0(t02, new Intent("android.intent.action.VIEW", Uri.parse(str)).setFlags(268435456), str, 1));
                        f2.F0 f02 = (f2.F0) f4.build();
                        AbstractC0117h abstractC0117h = d5.f2403a;
                        X2.u0 u0Var = C0884a0.f9334k;
                        if (u0Var == null) {
                            synchronized (C0884a0.class) {
                                u0Var = C0884a0.f9334k;
                                if (u0Var == null) {
                                    X2.s0 b4 = X2.u0.b();
                                    b4.f2226c = MethodDescriptor$MethodType.UNARY;
                                    b4.f2227d = X2.u0.a("com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest", "LogSearchGoogle");
                                    b4.f2228e = true;
                                    f2.F0 e4 = f2.F0.e();
                                    C0784w c0784w = Z2.c.f2379a;
                                    b4.f2224a = new Z2.b(e4);
                                    b4.f2225b = new Z2.b(C0868K.b());
                                    u0Var = b4.a();
                                    C0884a0.f9334k = u0Var;
                                }
                            }
                        }
                        a3.c b5 = a3.e.b(abstractC0117h.g(u0Var, d5.f2404b), f02);
                        N0 n02 = new N0(t02, "LogSearchGoogleResponse", elapsedRealtime, nexusLauncherLatencyEvent);
                        com.google.common.util.concurrent.e.a();
                        com.google.common.util.concurrent.d.a(b5, n02);
                    } else {
                        C0696s1 c0696s1 = t02.f6876i;
                        if (c0696s1.f7178a && c0696s1.f7199v.f7223p) {
                            C0883a d6 = C0885b.d();
                            d6.a((f2.F0) f4.build());
                            C0885b c0885b = (C0885b) d6.build();
                            AbstractC0117h abstractC0117h2 = d5.f2403a;
                            X2.u0 u0Var2 = C0884a0.f9333j;
                            if (u0Var2 == null) {
                                synchronized (C0884a0.class) {
                                    u0Var2 = C0884a0.f9333j;
                                    if (u0Var2 == null) {
                                        X2.s0 b6 = X2.u0.b();
                                        b6.f2226c = MethodDescriptor$MethodType.UNARY;
                                        b6.f2227d = X2.u0.a("com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest", "BuildUrlAndLogSearchGoogle");
                                        b6.f2228e = true;
                                        C0885b c4 = C0885b.c();
                                        C0784w c0784w2 = Z2.c.f2379a;
                                        b6.f2224a = new Z2.b(c4);
                                        b6.f2225b = new Z2.b(C0889d.b());
                                        u0Var2 = b6.a();
                                        C0884a0.f9333j = u0Var2;
                                    }
                                }
                            }
                            a3.c b7 = a3.e.b(abstractC0117h2.g(u0Var2, d5.f2404b), c0885b);
                            Q0 q02 = new Q0(t02, "BuildUrlAndLogSearchGoogleResponse", elapsedRealtime, nexusLauncherLatencyEvent, str, 2);
                            com.google.common.util.concurrent.e.a();
                            com.google.common.util.concurrent.d.a(b7, q02);
                        } else if (c0696s1.f7199v.f7221n) {
                            t02.f(((f2.F0) f4.build()).toByteArray(), view2, "SearchGoogleRequest", str);
                        } else {
                            f2.F0 f03 = (f2.F0) f4.build();
                            AbstractC0117h abstractC0117h3 = d5.f2403a;
                            X2.u0 u0Var3 = C0884a0.f9332i;
                            if (u0Var3 == null) {
                                synchronized (C0884a0.class) {
                                    u0Var3 = C0884a0.f9332i;
                                    if (u0Var3 == null) {
                                        X2.s0 b8 = X2.u0.b();
                                        b8.f2226c = MethodDescriptor$MethodType.UNARY;
                                        b8.f2227d = X2.u0.a("com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest", "SearchGoogle");
                                        b8.f2228e = true;
                                        f2.F0 e5 = f2.F0.e();
                                        C0784w c0784w3 = Z2.c.f2379a;
                                        b8.f2224a = new Z2.b(e5);
                                        b8.f2225b = new Z2.b(f2.H0.b());
                                        u0Var3 = b8.a();
                                        C0884a0.f9332i = u0Var3;
                                    }
                                }
                            }
                            a3.c b9 = a3.e.b(abstractC0117h3.g(u0Var3, d5.f2404b), f03);
                            N0 n03 = new N0(t02, "SearchGoogleResponse", elapsedRealtime, nexusLauncherLatencyEvent);
                            com.google.common.util.concurrent.e.a();
                            com.google.common.util.concurrent.d.a(b9, n03);
                        }
                    }
                    T0.e(j02);
                }
            });
        }
    }

    public final void J(OneSearchSessionManager$ZeroEntryState oneSearchSessionManager$ZeroEntryState) {
        if (this.f7287t != oneSearchSessionManager$ZeroEntryState) {
            this.f7287t = oneSearchSessionManager$ZeroEntryState;
            g3 g3Var = this.f7284q;
            synchronized (g3Var.f7068f) {
                g3Var.d();
            }
        }
    }

    public final boolean K() {
        return FeatureFlags.ENABLE_SEARCH_RESULT_BACKGROUND_DRAWABLES.get() && FeatureFlags.ENABLE_SEARCH_RESULT_LAUNCH_TRANSITION.get() && this.f7269I;
    }

    public final boolean L() {
        ExtendedEditText editText = ((ActivityContext) this.f7271d).getAppsView().getSearchUiManager().getEditText();
        if (editText instanceof SearchEditText) {
            return ((SearchEditText) editText).j();
        }
        return false;
    }

    public final boolean M() {
        boolean z4 = com.google.android.apps.nexuslauncher.c.f7334w.get() ? ((com.google.android.apps.nexuslauncher.u) com.google.android.apps.nexuslauncher.u.f7612m.get(this.f7282o)).f7619i.f7505c : true;
        C0696s1 c0696s1 = this.f7283p;
        return (c0696s1.f7199v.f7218k || this.f7287t != OneSearchSessionManager$ZeroEntryState.f6663d) && c0696s1.f7179b && z4;
    }

    public final void N() {
        SharedPreferences$OnSharedPreferenceChangeListenerC0725z2 sharedPreferences$OnSharedPreferenceChangeListenerC0725z2 = this.f7277j;
        if (sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7310l) {
            return;
        }
        sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7310l = true;
        Executors.UI_HELPER_EXECUTOR.execute(new RunnableC0709v2(sharedPreferences$OnSharedPreferenceChangeListenerC0725z2, 2));
        sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7303e.registerOnSharedPreferenceChangeListener(sharedPreferences$OnSharedPreferenceChangeListenerC0725z2);
        if (com.google.android.apps.nexuslauncher.c.f7334w.get()) {
            ((com.google.android.apps.nexuslauncher.u) com.google.android.apps.nexuslauncher.u.f7612m.get(sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7302d)).a(sharedPreferences$OnSharedPreferenceChangeListenerC0725z2);
        }
    }

    public final void O() {
        if (u()) {
            J(OneSearchSessionManager$ZeroEntryState.f6664e);
        } else if (t()) {
            J(OneSearchSessionManager$ZeroEntryState.f6663d);
        } else {
            J(OneSearchSessionManager$ZeroEntryState.f6665f);
        }
    }

    public final void P(boolean z4) {
        boolean z5 = com.google.android.apps.nexuslauncher.c.f7334w.get() ? ((com.google.android.apps.nexuslauncher.u) com.google.android.apps.nexuslauncher.u.f7612m.get(this.f7282o)).f7619i.f7505c : true;
        if (this.f7283p.f7179b && z5) {
            T0 t02 = this.f7285r;
            Query o4 = o("");
            g3 g3Var = this.f7284q;
            boolean z6 = this.f7291x;
            if (!t02.f6876i.f7184g || z6) {
                g().execute(new G0(t02, o4, g3Var, z4, 0));
            } else {
                t02.readFromAppSearch(o4, g3Var, z4);
            }
        }
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.InterfaceC0689q1
    public final void a(String str) {
        if ("pref_allowWebResult".equals(str)) {
            P(false);
        }
        ((ActivityContext) this.f7271d).getAppsView().getSearchUiManager().resetSearch();
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.InterfaceC0689q1
    public final void b() {
        F();
    }

    @Override // com.google.android.apps.nexuslauncher.m
    public final void c(com.google.android.apps.nexuslauncher.p pVar) {
        if (com.google.android.apps.nexuslauncher.c.f7334w.get()) {
            ((ActivityContext) this.f7271d).getAppsView().getSearchUiManager().resetSearch();
        }
    }

    public final f2.J0 d() {
        if (M()) {
            f2.I0 p4 = f2.J0.p();
            p4.e(this.f7261A);
            p4.c(this.f7289v);
            p4.f(this.f7262B);
            p4.b(this.f7263C);
            p4.a(this.f7264D);
            p4.d(this.f7287t.searchEntryState);
            return (f2.J0) p4.build();
        }
        return f2.J0.h();
    }

    public final C0688q0 e(SearchTarget searchTarget) {
        Bundle extras = searchTarget.getExtras();
        LauncherAtom$Attribute forNumber = LauncherAtom$Attribute.forNumber(extras.getInt("suggestion_type"));
        boolean z4 = extras.getBoolean("is_personal");
        SearchAction searchAction = searchTarget.getSearchAction();
        Bundle a4 = C1494b.a(searchAction);
        C0688q0 c0688q0 = new C0688q0(this, searchAction.getIcon(), searchTarget.getPackageName(), searchTarget.getUserHandle(), searchAction.getTitle(), z4 || searchTarget.getResultType() == 4, K(), a4, forNumber == LauncherAtom$Attribute.UNKNOWN ? D2.e(searchTarget) : Collections.singletonList(forNumber));
        c0688q0.w(searchAction.getIntent());
        PendingIntent pendingIntent = searchAction.getPendingIntent();
        if (c0688q0.f7058h == null || pendingIntent == null) {
            c0688q0.f7059i = pendingIntent;
            String string = a4.getString("title_content_description_override");
            if (!TextUtils.isEmpty(string)) {
                c0688q0.contentDescription = string;
            }
            return c0688q0;
        }
        throw new RuntimeException("SearchActionItemInfo can only have either an Intent or a PendingIntent");
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        if ("layout_inflater".equals(str)) {
            if (this.f7265E == null) {
                this.f7265E = LayoutInflater.from(getBaseContext()).cloneInContext(this);
            }
            return this.f7265E;
        }
        return getBaseContext().getSystemService(str);
    }

    public final C0695s0 h(String str, Handler handler, Supplier supplier, InterfaceC0703u0 interfaceC0703u0) {
        C0699t0 c0699t0 = (C0699t0) this.f7274g.get(str);
        if (c0699t0 == null) {
            c0699t0 = new C0699t0(handler, supplier);
            this.f7274g.put(str, c0699t0);
        }
        if (c0699t0.f7205c) {
            interfaceC0703u0.a(c0699t0.f7206d);
            return null;
        }
        c0699t0.f7203a.add(interfaceC0703u0);
        return new C0695s0(c0699t0, interfaceC0703u0);
    }

    public final LauncherAtomExtensions$ExtendedContainers i(Bundle bundle) {
        int i4;
        LauncherAtomExtensions$ExtendedContainers.Builder newBuilder = LauncherAtomExtensions$ExtendedContainers.newBuilder();
        if (!Utilities.isRunningInTestHarness()) {
            LauncherAtomExtensions$DeviceSearchResultContainer.Builder newBuilder2 = LauncherAtomExtensions$DeviceSearchResultContainer.newBuilder();
            newBuilder2.setQueryLength$1(q().length());
            if (bundle != null && (i4 = bundle.getInt("app_gridx", -1)) != -1) {
                newBuilder2.setGridX$2(i4);
            }
            LauncherAtomExtensions$DeviceSearchResultContainer.SearchAttributes p4 = p(bundle);
            if (!p4.equals(LauncherAtomExtensions$DeviceSearchResultContainer.SearchAttributes.getDefaultInstance())) {
                newBuilder2.setSearchAttributes(p4);
            }
            newBuilder.setDeviceSearchResultContainer((LauncherAtomExtensions$DeviceSearchResultContainer) newBuilder2.build());
        }
        return (LauncherAtomExtensions$ExtendedContainers) newBuilder.build();
    }

    public final Bitmap l(String str) {
        T0 t02 = this.f7285r;
        C0882Z d4 = t02.d();
        C0915q e4 = C0917r.e();
        e4.b(str);
        e4.a();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        C0917r c0917r = (C0917r) e4.build();
        AbstractC0117h abstractC0117h = d4.f2403a;
        X2.u0 u0Var = C0884a0.f9325b;
        if (u0Var == null) {
            synchronized (C0884a0.class) {
                u0Var = C0884a0.f9325b;
                if (u0Var == null) {
                    X2.s0 b4 = X2.u0.b();
                    b4.f2226c = MethodDescriptor$MethodType.UNARY;
                    b4.f2227d = X2.u0.a("com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest", "GetImage");
                    b4.f2228e = true;
                    C0917r d5 = C0917r.d();
                    C0784w c0784w = Z2.c.f2379a;
                    b4.f2224a = new Z2.b(d5);
                    b4.f2225b = new Z2.b(C0921t.c());
                    u0Var = b4.a();
                    C0884a0.f9325b = u0Var;
                }
            }
        }
        a3.c b5 = a3.e.b(abstractC0117h.g(u0Var, d4.f2404b), c0917r);
        Bitmap bitmap = null;
        try {
            C0921t c0921t = (C0921t) b5.get();
            if (c0921t.e()) {
                InputStream openInputStream = t02.f6869b.getContentResolver().openInputStream(Uri.parse(c0921t.b()));
                bitmap = BitmapFactory.decodeStream(openInputStream);
                if (openInputStream != null) {
                    openInputStream.close();
                }
            } else if (c0921t.f()) {
                byte[] q4 = c0921t.d().q();
                bitmap = BitmapFactory.decodeByteArray(q4, 0, q4.length);
            }
        } catch (IOException | InterruptedException | ExecutionException e5) {
            Log.e("OneSearchSuggestProvider", "Error getting images from AGA", e5);
        }
        long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
        if (bitmap == null) {
            t02.f6875h.b(NexusLauncherLatencyEvent.LAUNCHER_LATENCY_SUGGEST_GET_IMAGE_DURATION, elapsedRealtime2, 0);
        } else {
            t02.f6875h.e(NexusLauncherLatencyEvent.LAUNCHER_LATENCY_SUGGEST_GET_IMAGE_DURATION, elapsedRealtime2, elapsedRealtime);
        }
        return bitmap;
    }

    public final boolean m() {
        return this.f7287t == OneSearchSessionManager$ZeroEntryState.f6665f || (FeatureFlags.ENABLE_SHOW_KEYBOARD_OPTION_IN_ALL_APPS.get() && this.f7283p.f7199v.f7220m);
    }

    public final void n(Query query, AbstractC0683p abstractC0683p) {
        int i4 = this.f7283p.f7182e;
        Context context = this.f7282o;
        UserHandle userHandle = C2.f6516a;
        ArrayList arrayList = new ArrayList();
        for (int i5 = 0; i5 < i4; i5++) {
            String valueOf = String.valueOf(i5);
            SearchTarget.Builder userHandle2 = new SearchTarget.Builder(131072, "short_icon_row", valueOf).setPackageName("com.google.android.googlequicksearchbox").setUserHandle(C2.f6516a);
            Intent intent = new Intent("android.intent.action.WEB_SEARCH");
            intent.setFlags(268435456);
            intent.putExtra("query", "mock_query");
            intent.setPackage("com.google.android.apps.nexuslauncher.tests");
            Bundle bundle = new Bundle();
            bundle.putString("group_id", "web" + query.getInput() + query.getTimestampMillis());
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("should_start_for_result", true);
            bundle2.putBoolean("allow_pinning", true);
            bundle2.putString("suggestion_action_text", "Delete");
            bundle2.putInt("suggestion_action_rpc", 2);
            arrayList.add(userHandle2.setSearchAction(new SearchAction.Builder(androidx.constraintlayout.widget.j.a("web", valueOf), query.getInput() + valueOf).setIntent(intent).setExtras(bundle2).setIcon(Icon.createWithResource(context, (int) R.drawable.ic_suggest_search)).build()).setExtras(bundle).setScore(500.0f - i5).build());
        }
        abstractC0683p.b(arrayList);
    }

    public final Query o(String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("entry", this.f7287t.id);
        return new Query(str, SystemClock.elapsedRealtime(), bundle);
    }

    @Override // com.android.launcher3.allapps.AllAppsTransitionListener
    public final void onAllAppsTransitionEnd(boolean z4) {
        if (!z4) {
            if (!this.f7290w && this.f7291x) {
                if (M()) {
                    g().execute(new X(1, this, d()));
                }
                y();
            }
            if (this.f7291x && this.f7287t == OneSearchSessionManager$ZeroEntryState.f6664e) {
                ((ActivityContext) this.f7271d).getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_QSB_EXIT);
            }
            if (u()) {
                ((ActivityContext) this.f7271d).getAppsView().getSearchUiManager().resetSearch();
            }
            G();
        } else if (this.f7287t == OneSearchSessionManager$ZeroEntryState.f6663d && !this.f7291x) {
            Query o4 = o("");
            long timestampMillis = o4.getTimestampMillis();
            if (this.f7261A == 0) {
                this.f7261A = timestampMillis;
            }
            this.f7262B = o4.getTimestampMillis();
            if (M()) {
                if (C0700t1.b()) {
                    n(o4, this.f7284q);
                    return;
                }
                P(true);
            }
            if (LauncherPrefs.getPrefs(this.f7282o).getBoolean("pref_zero_state_query_ready", false)) {
                SharedPreferences$OnSharedPreferenceChangeListenerC0725z2 sharedPreferences$OnSharedPreferenceChangeListenerC0725z2 = this.f7277j;
                LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
                g3 g3Var = this.f7284q;
                Objects.requireNonNull(g3Var);
                sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.d(o4, null, looperExecutor, new C0632c0(g3Var, 0));
            }
        }
        if (this.f7283p.a()) {
            if (z4) {
                if (B.f6508a) {
                    Log.d("SearchSessionManager", "GmsPlay initConnection");
                }
                LooperExecutor j4 = j();
                A a4 = this.f7286s;
                Objects.requireNonNull(a4);
                j4.execute(new RunnableC0668l0(a4, 1));
                return;
            }
            if (B.f6508a) {
                Log.d("SearchSessionManager", "GmsPlay endSession");
            }
            LooperExecutor j5 = j();
            A a5 = this.f7286s;
            Objects.requireNonNull(a5);
            j5.execute(new RunnableC0668l0(a5, 2));
        }
    }

    @Override // com.android.launcher3.allapps.AllAppsTransitionListener
    public final void onAllAppsTransitionStart(boolean z4) {
        if (!this.f7291x) {
            O();
            return;
        }
        OneSearchSessionManager$ZeroEntryState oneSearchSessionManager$ZeroEntryState = this.f7287t;
        if (z4) {
            if (oneSearchSessionManager$ZeroEntryState == OneSearchSessionManager$ZeroEntryState.f6664e || oneSearchSessionManager$ZeroEntryState == OneSearchSessionManager$ZeroEntryState.f6665f) {
                Query o4 = o("");
                long timestampMillis = o4.getTimestampMillis();
                if (this.f7261A == 0) {
                    this.f7261A = timestampMillis;
                }
                this.f7262B = o4.getTimestampMillis();
                if (C0700t1.b()) {
                    n(o4, this.f7284q);
                    return;
                }
                if (LauncherPrefs.getPrefs(this.f7282o).getBoolean("pref_zero_state_query_ready", false)) {
                    SharedPreferences$OnSharedPreferenceChangeListenerC0725z2 sharedPreferences$OnSharedPreferenceChangeListenerC0725z2 = this.f7277j;
                    LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
                    g3 g3Var = this.f7284q;
                    Objects.requireNonNull(g3Var);
                    sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.d(o4, null, looperExecutor, new C0632c0(g3Var, 2));
                }
                if (this.f7283p.f7184g) {
                    return;
                }
                P(true);
            }
        }
    }

    public boolean onBackKey() {
        return false;
    }

    @Override // com.android.launcher3.DeviceProfile.OnDeviceProfileChangeListener
    public final void onDeviceProfileChanged(DeviceProfile deviceProfile) {
        int i4 = deviceProfile.numShownAllAppsColumns;
        if (this.f7288u != i4) {
            this.f7288u = i4;
            SharedPreferences$OnSharedPreferenceChangeListenerC0725z2 sharedPreferences$OnSharedPreferenceChangeListenerC0725z2 = this.f7277j;
            if (sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7310l) {
                Executors.UI_HELPER_EXECUTOR.execute(new RunnableC0709v2(sharedPreferences$OnSharedPreferenceChangeListenerC0725z2, 1));
            }
        }
    }

    public final LauncherAtomExtensions$DeviceSearchResultContainer.SearchAttributes p(Bundle bundle) {
        LauncherAtomExtensions$DeviceSearchResultContainer.SearchAttributes.Builder newBuilder = LauncherAtomExtensions$DeviceSearchResultContainer.SearchAttributes.newBuilder();
        newBuilder.setEntryState(this.f7287t.entryStateForLogging);
        if (bundle == null) {
            return (LauncherAtomExtensions$DeviceSearchResultContainer.SearchAttributes) newBuilder.build();
        }
        if (bundle.getBoolean("is_query_corrected", false)) {
            newBuilder.setCorrectedQuery();
        }
        if (bundle.getBoolean("result_match_user_typed", false)) {
            newBuilder.setDirectMatch();
        }
        return (LauncherAtomExtensions$DeviceSearchResultContainer.SearchAttributes) newBuilder.build();
    }

    public final String q() {
        return (((ActivityContext) this.f7271d).getAppsView() == null || ((ActivityContext) this.f7271d).getAppsView().getSearchUiManager() == null || ((ActivityContext) this.f7271d).getAppsView().getSearchUiManager().getEditText() == null) ? "" : ((ActivityContext) this.f7271d).getAppsView().getSearchUiManager().getEditText().getText().toString();
    }

    public final boolean s() {
        ExtendedEditText editText;
        AbstractFloatingView topOpenViewWithType = AbstractFloatingView.getTopOpenViewWithType((ActivityContext) this.f7271d, 3801087);
        if (topOpenViewWithType != null && topOpenViewWithType.canHandleBack()) {
            topOpenViewWithType.onBackInvoked();
            return true;
        } else if (this.f7291x && (editText = ((ActivityContext) this.f7271d).getAppsView().getSearchUiManager().getEditText()) != null) {
            boolean isVisible = editText.getRootWindowInsets().isVisible(WindowInsets.Type.ime());
            editText.hideKeyboard();
            ((ActivityContext) this.f7271d).getAppsView().requestFocus();
            if (editText.getText().length() <= 0 || !isVisible) {
                if (this.f7287t == OneSearchSessionManager$ZeroEntryState.f6663d) {
                    if (!this.f7290w) {
                        if (M()) {
                            g().execute(new X(1, this, d()));
                        }
                        y();
                    }
                    ((ActivityContext) this.f7271d).getAppsView().getSearchUiManager().resetSearch();
                    G();
                    return true;
                }
                return false;
            }
            return true;
        } else {
            return false;
        }
    }

    public boolean t() {
        return ((ActivityContext) this.f7271d).getAppsView() != null && ((ActivityContext) this.f7271d).getAppsView().isInAllApps();
    }

    public boolean u() {
        return ((ActivityContext) this.f7271d).getAppsView() == null || !((ActivityContext) this.f7271d).getAppsView().isInAllApps();
    }

    public final boolean v() {
        C0696s1 c0696s1 = this.f7283p;
        return !c0696s1.f7185h || c0696s1.f7190m || x();
    }

    public final boolean w() {
        OneSearchSessionManager$ZeroEntryState oneSearchSessionManager$ZeroEntryState = this.f7287t;
        if (oneSearchSessionManager$ZeroEntryState == OneSearchSessionManager$ZeroEntryState.f6664e) {
            return this.f7283p.f7191n;
        }
        if (oneSearchSessionManager$ZeroEntryState == OneSearchSessionManager$ZeroEntryState.f6663d || oneSearchSessionManager$ZeroEntryState == OneSearchSessionManager$ZeroEntryState.f6665f) {
            return this.f7283p.f7192o;
        }
        return false;
    }

    public final boolean x() {
        if (this.f7267G) {
            return w();
        }
        return false;
    }

    public final void y() {
        z(o(q()), f7258M);
    }

    public final void z(final Query query, final SearchTargetEvent searchTargetEvent) {
        if (query != null) {
            StringBuilder sb = new StringBuilder("notifyEvent: query=");
            String str = query.getInput() + " at " + query.getTimestampMillis();
            Bundle extras = query.getExtras();
            if (extras != null) {
                String a4 = C1391a.a(str, " Bundle{");
                for (String str2 : extras.keySet()) {
                    a4 = a4 + str2 + "=" + extras.get(str2) + " ";
                }
                str = C1391a.a(a4, "}");
            }
            sb.append(str);
            sb.append(" targetId=");
            sb.append(searchTargetEvent.getTargetId());
            sb.append(" eventType=");
            sb.append(searchTargetEvent.getAction());
            Log.d("SearchSessionManager", sb.toString());
            final SharedPreferences$OnSharedPreferenceChangeListenerC0725z2 sharedPreferences$OnSharedPreferenceChangeListenerC0725z2 = this.f7277j;
            sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.getClass();
            Executors.UI_HELPER_EXECUTOR.post(new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.u2
                @Override // java.lang.Runnable
                public final void run() {
                    SharedPreferences$OnSharedPreferenceChangeListenerC0725z2 sharedPreferences$OnSharedPreferenceChangeListenerC0725z22 = SharedPreferences$OnSharedPreferenceChangeListenerC0725z2.this;
                    SearchTargetEvent searchTargetEvent2 = searchTargetEvent;
                    Query query2 = query;
                    SearchSession searchSession = sharedPreferences$OnSharedPreferenceChangeListenerC0725z22.f7308j;
                    if (searchSession != null) {
                        searchSession.notifyEvent(query2, searchTargetEvent2);
                        return;
                    }
                    Log.d("SearchSessionLifecycle", "Dropping event " + searchTargetEvent2.getTargetId());
                }
            });
        }
    }
}
