package com.google.android.apps.nexuslauncher.allapps;

import X2.AbstractC0117h;
import android.app.search.SearchAction;
import android.app.search.SearchTarget;
import android.app.search.SearchTargetEvent;
import android.content.Intent;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.Executors;
import com.android.launcher3.views.ActivityContext;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherLatencyEvent;
import com.google.protobuf.C0784w;
import f2.C0863F;
import f2.C0864G;
import f2.C0866I;
import f2.C0870M;
import f2.C0872O;
import f2.C0882Z;
import f2.C0884a0;
import f2.C0891e;
import f2.C0893f;
import f2.C0897h;
import f2.C0899i;
import f2.C0901j;
import f2.C0905l;
import io.grpc.MethodDescriptor$MethodType;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;
import z0.C1495c;
/* loaded from: classes.dex */
public interface A2 extends com.android.systemui.animation.t {
    static void b(SearchResultIcon[] searchResultIconArr, List list) {
        for (int i4 = 0; i4 < searchResultIconArr.length; i4++) {
            ArrayList arrayList = (ArrayList) list;
            if (i4 >= arrayList.size()) {
                searchResultIconArr[i4].reset();
                searchResultIconArr[i4].setVisibility(8);
            } else if (!searchResultIconArr[i4].o((SearchTarget) arrayList.get(i4))) {
                searchResultIconArr[i4].setVisibility(8);
            } else if (((SearchTarget) arrayList.get(i4)).getResultType() == 2) {
                searchResultIconArr[i4].f6747u = true;
            }
            searchResultIconArr[i4].setTextVisibility(false);
        }
    }

    static void g(C0719y0 c0719y0, SearchTarget searchTarget, int i4) {
        int resultType = searchTarget.getResultType();
        String id = searchTarget.getId();
        if (resultType == 131072) {
            id = C1495c.b(searchTarget);
        }
        c0719y0.z(D2.g(searchTarget), new SearchTargetEvent.Builder(id, i4).build());
    }

    static void m(final C0719y0 c0719y0, int i4, final View view, SearchTarget searchTarget) {
        if (i4 == 5 || i4 == 3 || i4 == 6) {
            final int resultType = searchTarget.getResultType();
            g(c0719y0, searchTarget, i4);
            c0719y0.y();
            SearchAction searchAction = searchTarget.getSearchAction();
            boolean z4 = (searchAction == null || searchAction.getExtras() == null) ? false : searchAction.getExtras().getBoolean("skip_logging_in_target_handler");
            final String string = searchTarget.getExtras().getString("suggest_raw_text");
            if (resultType != 131072) {
                if (resultType == 512 && "com.google.android.googlequicksearchbox".equals(searchTarget.getPackageName())) {
                    c0719y0.I(view);
                } else if (c0719y0.M()) {
                    if (((ArrayList) c0719y0.f7289v).size() == 0) {
                        Log.e("SearchSessionManager", "logOnDeviceResultClicked not sent since RenderedSuggestionsList is empty");
                        return;
                    }
                    c0719y0.f7290w = true;
                    final f2.J0 d4 = c0719y0.d();
                    ArrayList arrayList = (ArrayList) c0719y0.f7289v;
                    final f2.x0 x0Var = (f2.x0) arrayList.get(arrayList.size() - 1);
                    C0719y0.g().execute(new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.i0
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i5;
                            C0719y0 c0719y02 = C0719y0.this;
                            f2.x0 x0Var2 = x0Var;
                            int i6 = resultType;
                            f2.J0 j02 = d4;
                            c0719y02.getClass();
                            int e4 = x0Var2.e();
                            if (e4 > 1) {
                                if (i6 != 1) {
                                    i5 = 2;
                                    if (e4 == 2) {
                                        i5 = 1;
                                    }
                                } else {
                                    i5 = 0;
                                }
                                T0 t02 = c0719y02.f7285r;
                                t02.getClass();
                                if (D2.f6522b) {
                                    Log.d("AGASessionSummaryLog", "logOnDeviceResultClicked with deviceBlockIndex= " + i5);
                                }
                                C0863F f4 = C0864G.f();
                                f4.c(j02);
                                f4.b(SystemClock.elapsedRealtime());
                                f4.a(i5);
                                C0864G c0864g = (C0864G) f4.build();
                                C0882Z d5 = t02.d();
                                AbstractC0117h abstractC0117h = d5.f2403a;
                                X2.u0 u0Var = C0884a0.f9339p;
                                if (u0Var == null) {
                                    synchronized (C0884a0.class) {
                                        u0Var = C0884a0.f9339p;
                                        if (u0Var == null) {
                                            X2.s0 b4 = X2.u0.b();
                                            b4.f2226c = MethodDescriptor$MethodType.UNARY;
                                            b4.f2227d = X2.u0.a("com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest", "LogOnDeviceResultClicked");
                                            b4.f2228e = true;
                                            C0864G e5 = C0864G.e();
                                            C0784w c0784w = Z2.c.f2379a;
                                            b4.f2224a = new Z2.b(e5);
                                            b4.f2225b = new Z2.b(C0866I.b());
                                            X2.u0 a4 = b4.a();
                                            C0884a0.f9339p = a4;
                                            u0Var = a4;
                                        }
                                    }
                                }
                                a3.e.b(abstractC0117h.g(u0Var, d5.f2404b), c0864g);
                                T0.e(j02);
                            }
                        }
                    });
                }
            } else if (searchTarget.getLayoutType().equals("text_header_row")) {
                D2.i(view);
            } else {
                ItemInfo itemInfo = (ItemInfo) view.getTag();
                if (itemInfo == null || z4) {
                    String b4 = C1495c.b(searchTarget);
                    Log.e("SearchTargetHandler", "ItemInfo was null on SearchResultIcon id = " + b4 + "and logging was skipped.");
                } else {
                    ((ActivityContext) c0719y0.f7271d).getStatsLogManager().logger().withItemInfo(itemInfo).log(StatsLogManager.LauncherEvent.LAUNCHER_APP_LAUNCH_TAP);
                }
                if (searchTarget.getParentId() != null) {
                    final String string2 = searchTarget.getExtras().getString("suggest_url");
                    final String parentId = searchTarget.getParentId();
                    final String id = searchTarget.getId();
                    final f2.J0 d5 = c0719y0.d();
                    C0719y0.g().execute(new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.g0
                        @Override // java.lang.Runnable
                        public final void run() {
                            C0719y0 c0719y02 = C0719y0.this;
                            String str = parentId;
                            String str2 = id;
                            f2.J0 j02 = d5;
                            String str3 = string;
                            View view2 = view;
                            String str4 = string2;
                            T0 t02 = c0719y02.f7285r;
                            t02.getClass();
                            if (D2.f6522b) {
                                Log.d("AGASessionSummaryLog", "selectButton");
                            }
                            C0882Z d6 = t02.d();
                            f2.K0 h4 = f2.L0.h();
                            h4.e(str);
                            h4.a(str2);
                            h4.b(str3);
                            h4.c(SystemClock.elapsedRealtime());
                            h4.d(j02);
                            long elapsedRealtime = SystemClock.elapsedRealtime();
                            NexusLauncherLatencyEvent nexusLauncherLatencyEvent = NexusLauncherLatencyEvent.LAUNCHER_LATENCY_SELECT_SUGGESTION_DURATION;
                            if (str4 != null) {
                                try {
                                    Executors.MAIN_EXECUTOR.execute(new J0(t02, Intent.parseUri(str4, 1).setFlags(268435456), str3, 0));
                                } catch (URISyntaxException unused) {
                                    Log.e("OneSearchSuggestProvider", "Bad URI syntax: ".concat(str4));
                                }
                                f2.L0 l02 = (f2.L0) h4.build();
                                AbstractC0117h abstractC0117h = d6.f2403a;
                                X2.u0 u0Var = C0884a0.f9331h;
                                if (u0Var == null) {
                                    synchronized (C0884a0.class) {
                                        u0Var = C0884a0.f9331h;
                                        if (u0Var == null) {
                                            X2.s0 b5 = X2.u0.b();
                                            b5.f2226c = MethodDescriptor$MethodType.UNARY;
                                            b5.f2227d = X2.u0.a("com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest", "LogSelectButton");
                                            b5.f2228e = true;
                                            f2.L0 g4 = f2.L0.g();
                                            C0784w c0784w = Z2.c.f2379a;
                                            b5.f2224a = new Z2.b(g4);
                                            b5.f2225b = new Z2.b(C0870M.b());
                                            X2.u0 a4 = b5.a();
                                            C0884a0.f9331h = a4;
                                            u0Var = a4;
                                        }
                                    }
                                }
                                a3.c b6 = a3.e.b(abstractC0117h.g(u0Var, d6.f2404b), l02);
                                N0 n02 = new N0(t02, "LogSelectButtonResponse", elapsedRealtime, nexusLauncherLatencyEvent);
                                com.google.common.util.concurrent.e.a();
                                com.google.common.util.concurrent.d.a(b6, n02);
                            } else {
                                C0696s1 c0696s1 = t02.f6876i;
                                if (c0696s1.f7178a && c0696s1.f7199v.f7223p) {
                                    C0891e d7 = C0893f.d();
                                    d7.a((f2.L0) h4.build());
                                    C0893f c0893f = (C0893f) d7.build();
                                    AbstractC0117h abstractC0117h2 = d6.f2403a;
                                    X2.u0 u0Var2 = C0884a0.f9330g;
                                    if (u0Var2 == null) {
                                        synchronized (C0884a0.class) {
                                            u0Var2 = C0884a0.f9330g;
                                            if (u0Var2 == null) {
                                                X2.s0 b7 = X2.u0.b();
                                                b7.f2226c = MethodDescriptor$MethodType.UNARY;
                                                b7.f2227d = X2.u0.a("com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest", "BuildUrlAndLogSelectButton");
                                                b7.f2228e = true;
                                                C0893f c4 = C0893f.c();
                                                C0784w c0784w2 = Z2.c.f2379a;
                                                b7.f2224a = new Z2.b(c4);
                                                b7.f2225b = new Z2.b(C0897h.b());
                                                X2.u0 a5 = b7.a();
                                                C0884a0.f9330g = a5;
                                                u0Var2 = a5;
                                            }
                                        }
                                    }
                                    a3.c b8 = a3.e.b(abstractC0117h2.g(u0Var2, d6.f2404b), c0893f);
                                    Q0 q02 = new Q0(t02, "BuildUrlAndLogSelectButtonResponse", elapsedRealtime, nexusLauncherLatencyEvent, view2, 1);
                                    com.google.common.util.concurrent.e.a();
                                    com.google.common.util.concurrent.d.a(b8, q02);
                                } else if (c0696s1.f7199v.f7221n) {
                                    t02.f(((f2.L0) h4.build()).toByteArray(), view2, "SelectButtonRequest", str3);
                                } else {
                                    f2.L0 l03 = (f2.L0) h4.build();
                                    AbstractC0117h abstractC0117h3 = d6.f2403a;
                                    X2.u0 u0Var3 = C0884a0.f9329f;
                                    if (u0Var3 == null) {
                                        synchronized (C0884a0.class) {
                                            u0Var3 = C0884a0.f9329f;
                                            if (u0Var3 == null) {
                                                X2.s0 b9 = X2.u0.b();
                                                b9.f2226c = MethodDescriptor$MethodType.UNARY;
                                                b9.f2227d = X2.u0.a("com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest", "SelectButton");
                                                b9.f2228e = true;
                                                f2.L0 g5 = f2.L0.g();
                                                C0784w c0784w3 = Z2.c.f2379a;
                                                b9.f2224a = new Z2.b(g5);
                                                b9.f2225b = new Z2.b(f2.N0.b());
                                                X2.u0 a6 = b9.a();
                                                C0884a0.f9329f = a6;
                                                u0Var3 = a6;
                                            }
                                        }
                                    }
                                    a3.c b10 = a3.e.b(abstractC0117h3.g(u0Var3, d6.f2404b), l03);
                                    N0 n03 = new N0(t02, "SelectButtonResponse", elapsedRealtime, nexusLauncherLatencyEvent);
                                    com.google.common.util.concurrent.e.a();
                                    com.google.common.util.concurrent.d.a(b10, n03);
                                }
                            }
                            T0.e(j02);
                        }
                    });
                } else if (C0700t1.b()) {
                    c0719y0.startActivity(searchTarget.getSearchAction().getIntent());
                } else {
                    final String string3 = searchTarget.getExtras().getString("suggest_url");
                    final String id2 = searchTarget.getId();
                    c0719y0.f7290w = true;
                    final f2.J0 d6 = c0719y0.d();
                    C0719y0.g().execute(new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.f0
                        @Override // java.lang.Runnable
                        public final void run() {
                            C0719y0 c0719y02 = C0719y0.this;
                            String str = id2;
                            f2.J0 j02 = d6;
                            String str2 = string;
                            View view2 = view;
                            String str3 = string3;
                            T0 t02 = c0719y02.f7285r;
                            t02.getClass();
                            if (D2.f6522b) {
                                Log.d("AGASessionSummaryLog", "selectSuggestion");
                            }
                            C0882Z d7 = t02.d();
                            f2.O0 g4 = f2.P0.g();
                            g4.d(str);
                            g4.a(str2 == null ? "" : str2);
                            g4.b(SystemClock.elapsedRealtime());
                            g4.c(j02);
                            long elapsedRealtime = SystemClock.elapsedRealtime();
                            NexusLauncherLatencyEvent nexusLauncherLatencyEvent = NexusLauncherLatencyEvent.LAUNCHER_LATENCY_SELECT_SUGGESTION_DURATION;
                            if (str3 != null) {
                                Executors.MAIN_EXECUTOR.execute(new H0(t02, view2, str3, 0));
                                f2.P0 p02 = (f2.P0) g4.build();
                                AbstractC0117h abstractC0117h = d7.f2403a;
                                X2.u0 u0Var = C0884a0.f9328e;
                                if (u0Var == null) {
                                    synchronized (C0884a0.class) {
                                        u0Var = C0884a0.f9328e;
                                        if (u0Var == null) {
                                            X2.s0 b5 = X2.u0.b();
                                            b5.f2226c = MethodDescriptor$MethodType.UNARY;
                                            b5.f2227d = X2.u0.a("com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest", "LogSelectSuggestion");
                                            b5.f2228e = true;
                                            f2.P0 f4 = f2.P0.f();
                                            C0784w c0784w = Z2.c.f2379a;
                                            b5.f2224a = new Z2.b(f4);
                                            b5.f2225b = new Z2.b(C0872O.b());
                                            X2.u0 a4 = b5.a();
                                            C0884a0.f9328e = a4;
                                            u0Var = a4;
                                        }
                                    }
                                }
                                a3.c b6 = a3.e.b(abstractC0117h.g(u0Var, d7.f2404b), p02);
                                N0 n02 = new N0(t02, "LogSelectSuggestionResponse", elapsedRealtime, nexusLauncherLatencyEvent);
                                com.google.common.util.concurrent.e.a();
                                com.google.common.util.concurrent.d.a(b6, n02);
                            } else {
                                C0696s1 c0696s1 = t02.f6876i;
                                if (c0696s1.f7178a && c0696s1.f7199v.f7223p) {
                                    C0899i d8 = C0901j.d();
                                    d8.a((f2.P0) g4.build());
                                    C0901j c0901j = (C0901j) d8.build();
                                    AbstractC0117h abstractC0117h2 = d7.f2403a;
                                    X2.u0 u0Var2 = C0884a0.f9327d;
                                    if (u0Var2 == null) {
                                        synchronized (C0884a0.class) {
                                            u0Var2 = C0884a0.f9327d;
                                            if (u0Var2 == null) {
                                                X2.s0 b7 = X2.u0.b();
                                                b7.f2226c = MethodDescriptor$MethodType.UNARY;
                                                b7.f2227d = X2.u0.a("com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest", "BuildUrlAndLogSelectSuggestion");
                                                b7.f2228e = true;
                                                C0901j c4 = C0901j.c();
                                                C0784w c0784w2 = Z2.c.f2379a;
                                                b7.f2224a = new Z2.b(c4);
                                                b7.f2225b = new Z2.b(C0905l.b());
                                                X2.u0 a5 = b7.a();
                                                C0884a0.f9327d = a5;
                                                u0Var2 = a5;
                                            }
                                        }
                                    }
                                    a3.c b8 = a3.e.b(abstractC0117h2.g(u0Var2, d7.f2404b), c0901j);
                                    Q0 q02 = new Q0(t02, "BuildUrlAndLogSelectSuggestionResponse", elapsedRealtime, nexusLauncherLatencyEvent, view2, 0);
                                    com.google.common.util.concurrent.e.a();
                                    com.google.common.util.concurrent.d.a(b8, q02);
                                } else if (c0696s1.f7199v.f7221n) {
                                    t02.f(((f2.P0) g4.build()).toByteArray(), view2, "SelectSuggestionRequest", str2);
                                } else {
                                    f2.P0 p03 = (f2.P0) g4.build();
                                    AbstractC0117h abstractC0117h3 = d7.f2403a;
                                    X2.u0 u0Var3 = C0884a0.f9326c;
                                    if (u0Var3 == null) {
                                        synchronized (C0884a0.class) {
                                            u0Var3 = C0884a0.f9326c;
                                            if (u0Var3 == null) {
                                                X2.s0 b9 = X2.u0.b();
                                                b9.f2226c = MethodDescriptor$MethodType.UNARY;
                                                b9.f2227d = X2.u0.a("com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest", "SelectSuggestion");
                                                b9.f2228e = true;
                                                f2.P0 f5 = f2.P0.f();
                                                C0784w c0784w3 = Z2.c.f2379a;
                                                b9.f2224a = new Z2.b(f5);
                                                b9.f2225b = new Z2.b(f2.R0.b());
                                                X2.u0 a6 = b9.a();
                                                C0884a0.f9326c = a6;
                                                u0Var3 = a6;
                                            }
                                        }
                                    }
                                    a3.c b10 = a3.e.b(abstractC0117h3.g(u0Var3, d7.f2404b), p03);
                                    N0 n03 = new N0(t02, "SelectSuggestionResponse", elapsedRealtime, nexusLauncherLatencyEvent);
                                    com.google.common.util.concurrent.e.a();
                                    com.google.common.util.concurrent.d.a(b10, n03);
                                }
                            }
                            T0.e(j02);
                        }
                    });
                }
            }
        }
    }

    default CharSequence a() {
        return null;
    }

    default boolean c() {
        return false;
    }

    default boolean d() {
        return false;
    }

    void e(C0653h1 c0653h1);

    default CharSequence f() {
        return null;
    }

    default void h(I2 i22) {
        if (this instanceof View) {
            View view = (View) this;
            if (i22 == null || !FeatureFlags.ENABLE_SEARCH_RESULT_BACKGROUND_DRAWABLES.get()) {
                view.setBackground(null);
                return;
            }
            C0719y0 f4 = C0719y0.f(view.getContext());
            C0662j2.a(view, f4, i22, d() && f4.v() && !f4.L());
        }
    }

    default boolean n() {
        return false;
    }
}
