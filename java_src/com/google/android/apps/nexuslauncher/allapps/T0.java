package com.google.android.apps.nexuslauncher.allapps;

import X2.AbstractC0114f0;
import X2.AbstractC0117h;
import android.app.appsearch.AppSearchManager;
import android.app.appsearch.AppSearchResult;
import android.app.appsearch.GetByDocumentIdRequest;
import android.app.appsearch.GlobalSearchSession;
import android.app.appsearch.exceptions.AppSearchException;
import android.app.search.Query;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import com.android.launcher3.Utilities;
import com.android.launcher3.logging.InstanceIdSequence;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.RunnableList;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.system.InteractionJankMonitorWrapper;
import com.google.android.apps.nexuslauncher.logging.LatencyLoggingPackageId;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherLatencyEvent;
import com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchEntryPoint;
import com.google.protobuf.C0784w;
import f2.C0858A;
import f2.C0881Y;
import f2.C0882Z;
import f2.C0884a0;
import f2.C0923u;
import f2.C0925w;
import io.grpc.MethodDescriptor$MethodType;
import io.grpc.binder.AndroidComponentAddress;
import io.grpc.internal.C1069z1;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import java.util.function.Function;
/* loaded from: classes.dex */
public final class T0 {

    /* renamed from: a  reason: collision with root package name */
    public final C0719y0 f6868a;

    /* renamed from: b  reason: collision with root package name */
    public final Context f6869b;

    /* renamed from: c  reason: collision with root package name */
    public final CompletableFuture f6870c = new CompletableFuture();

    /* renamed from: d  reason: collision with root package name */
    public final ActivityContext f6871d;

    /* renamed from: e  reason: collision with root package name */
    public GetByDocumentIdRequest f6872e;

    /* renamed from: f  reason: collision with root package name */
    public C1069z1 f6873f;

    /* renamed from: g  reason: collision with root package name */
    public C0882Z f6874g;

    /* renamed from: h  reason: collision with root package name */
    public final W f6875h;

    /* renamed from: i  reason: collision with root package name */
    public final C0696s1 f6876i;

    public T0(C0719y0 c0719y0, C0696s1 c0696s1) {
        this.f6868a = c0719y0;
        Context applicationContext = c0719y0.getApplicationContext();
        this.f6869b = applicationContext;
        this.f6875h = new W(c0719y0);
        this.f6876i = c0696s1;
        if (c0696s1.f7184g) {
            this.f6872e = new GetByDocumentIdRequest.Builder("default").addIds("zp").build();
            ((AppSearchManager) applicationContext.getSystemService(AppSearchManager.class)).createGlobalSearchSession(C0719y0.g(), new Consumer() { // from class: com.google.android.apps.nexuslauncher.allapps.z0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    T0 t02 = T0.this;
                    AppSearchResult appSearchResult = (AppSearchResult) obj;
                    t02.getClass();
                    boolean isSuccess = appSearchResult.isSuccess();
                    CompletableFuture completableFuture = t02.f6870c;
                    if (isSuccess) {
                        completableFuture.complete((GlobalSearchSession) appSearchResult.getResultValue());
                    } else {
                        completableFuture.completeExceptionally(new AppSearchException(appSearchResult.getResultCode(), appSearchResult.getErrorMessage()));
                    }
                }
            });
        }
        this.f6871d = (ActivityContext) c0719y0.f7271d;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0032 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(com.google.android.apps.nexuslauncher.allapps.T0 r0, java.lang.Throwable r1) {
        /*
            r0.getClass()
            X2.k0 r0 = com.google.android.apps.nexuslauncher.allapps.S0.f6705a
            boolean r0 = r1 instanceof io.grpc.StatusRuntimeException
            if (r0 == 0) goto L22
            io.grpc.StatusRuntimeException r1 = (io.grpc.StatusRuntimeException) r1
            X2.r0 r0 = r1.b()
            if (r0 == 0) goto L1a
            X2.k0 r1 = com.google.android.apps.nexuslauncher.allapps.S0.f6705a
            java.lang.Object r0 = r0.c(r1)
            f2.X r0 = (f2.C0880X) r0
            goto L1b
        L1a:
            r0 = 0
        L1b:
            if (r0 == 0) goto L22
            com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchError$Status r0 = r0.b()
            goto L24
        L22:
            com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchError$Status r0 = com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchError$Status.UNKNOWN
        L24:
            int r0 = r0.ordinal()
            r1 = 1
            if (r0 == r1) goto L32
            r1 = 2
            if (r0 == r1) goto L30
            r0 = 0
            goto L33
        L30:
            r0 = 5
            goto L33
        L32:
            r0 = 4
        L33:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.apps.nexuslauncher.allapps.T0.a(com.google.android.apps.nexuslauncher.allapps.T0, java.lang.Throwable):int");
    }

    public static void e(f2.J0 j02) {
        if (D2.f6522b) {
            Log.d("AGASessionSummaryLog", "Session Summary is below: \nFirstEditTime= " + j02.j() + " LastEditTime= " + j02.k());
            for (int i4 = 0; i4 < j02.o(); i4++) {
                String g4 = j02.n(i4).g();
                com.google.protobuf.S f4 = j02.n(i4).f();
                if (D2.f6522b) {
                    Log.d("AGASessionSummaryLog", "suggestionResponseId= " + g4 + " Number of OneSearchRenderedBlock= " + f4.size());
                    for (int i5 = 0; i5 < f4.size(); i5++) {
                        Log.d("AGASessionSummaryLog", "\t" + ((f2.w0) f4.get(i5)).d().name());
                    }
                }
            }
            Log.d("AGASessionSummaryLog", "QueryClearTapCount= " + j02.l() + " ,LongPressCount= " + j02.m());
            StringBuilder sb = new StringBuilder("Entry point= ");
            sb.append(j02.i());
            Log.d("AGASessionSummaryLog", sb.toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0391  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x03c6  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x03c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(android.app.search.Query r38, f2.C0858A r39, final com.google.android.apps.nexuslauncher.allapps.AbstractC0683p r40, long r41, byte[] r43, boolean r44) {
        /*
            Method dump skipped, instructions count: 1541
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.apps.nexuslauncher.allapps.T0.b(android.app.search.Query, f2.A, com.google.android.apps.nexuslauncher.allapps.p, long, byte[], boolean):void");
    }

    public final void c(Query query, AbstractC0683p abstractC0683p, boolean z4) {
        C0882Z d4 = d();
        this.f6875h.f6963d = query.getInput().length();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        OneSearchEntryPoint oneSearchEntryPoint = this.f6868a.f7287t.searchEntryState;
        String input = query.getInput();
        C0923u i4 = C0925w.i();
        i4.d(input);
        i4.c(z4);
        i4.e(elapsedRealtime);
        i4.f();
        i4.a(1, this.f6876i.f7189l);
        i4.a(2, true);
        i4.a(3, com.google.android.apps.nexuslauncher.c.f7324m.get());
        i4.a(4, true);
        if (oneSearchEntryPoint != null) {
            i4.b(oneSearchEntryPoint);
        }
        C0925w c0925w = (C0925w) i4.build();
        AbstractC0117h abstractC0117h = d4.f2403a;
        X2.u0 u0Var = C0884a0.f9324a;
        if (u0Var == null) {
            synchronized (C0884a0.class) {
                u0Var = C0884a0.f9324a;
                if (u0Var == null) {
                    X2.s0 b4 = X2.u0.b();
                    b4.f2226c = MethodDescriptor$MethodType.UNARY;
                    b4.f2227d = X2.u0.a("com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest", "GetSuggestions");
                    b4.f2228e = true;
                    C0925w h4 = C0925w.h();
                    C0784w c0784w = Z2.c.f2379a;
                    b4.f2224a = new Z2.b(h4);
                    b4.f2225b = new Z2.b(C0858A.b());
                    X2.u0 a4 = b4.a();
                    C0884a0.f9324a = a4;
                    u0Var = a4;
                }
            }
        }
        a3.c b5 = a3.e.b(abstractC0117h.g(u0Var, d4.f2404b), c0925w);
        O0 o02 = new O0(this, query, abstractC0683p, elapsedRealtime);
        com.google.common.util.concurrent.e.a();
        com.google.common.util.concurrent.d.a(b5, o02);
    }

    public final C0882Z d() {
        C1069z1 c1069z1 = this.f6873f;
        W w4 = this.f6875h;
        if (c1069z1 == null || c1069z1.h() || this.f6874g == null) {
            int i4 = AndroidComponentAddress.f9694d;
            io.grpc.binder.d dVar = new io.grpc.binder.d(this.f6869b, new AndroidComponentAddress(new Intent("grpc.io.action.BIND").setComponent(new ComponentName("com.google.android.googlequicksearchbox", "com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.server.OneSearchSuggestService"))));
            dVar.f9712d = new io.grpc.binder.i();
            C1069z1 c1069z12 = (C1069z1) dVar.a();
            this.f6873f = c1069z12;
            this.f6874g = (C0882Z) io.grpc.stub.a.a(new C0881Y(), c1069z12);
            C1069z1 c1069z13 = this.f6873f;
            if (c1069z13 == null || c1069z13.h() || this.f6874g == null) {
                Log.e("OneSearchSuggestProvider", "Failed to build the binder channel for end point service =com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.server.OneSearchSuggestService , mChannel=" + this.f6873f + " , mOneSearchConnection=" + this.f6874g);
            } else {
                Log.d("OneSearchSuggestProvider", "Created the binder channel successfully for end point service =com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.server.OneSearchSuggestService , mChannel=" + this.f6873f + " , mOneSearchConnection=" + this.f6874g);
            }
            w4.f6962c = false;
        } else {
            Log.d("OneSearchSuggestProvider", "Established or reuse existing binder channel authority=" + this.f6873f.a());
            w4.f6962c = true;
        }
        return this.f6874g;
    }

    public final void f(byte[] bArr, final View view, String str, String str2) {
        String str3 = this.f6868a.f7287t.searchEntryState.equals(OneSearchEntryPoint.ENTRY_POINT_QSB) ? "and.gsa.launcher.onesearch.psb" : "and.gsa.launcher.onesearch.allapps";
        final Intent intent = new Intent("com.google.android.PIXEL_SEARCH");
        intent.setPackage("com.google.android.googlequicksearchbox");
        intent.putExtra("onesearch_request_type", str);
        intent.putExtra("onesearch_request", bArr);
        intent.putExtra("source", str3);
        intent.setFlags(268533760);
        final ItemInfo t4 = view != null ? (ItemInfo) view.getTag() : C0649g1.t(intent, str2);
        final boolean z4 = view != null && t4.shouldUseBackgroundAnimation() && "SelectSuggestionRequest".equals(str);
        if (z4) {
            InteractionJankMonitorWrapper.begin(view, 71);
        }
        Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.A0
            @Override // java.lang.Runnable
            public final void run() {
                T0 t02 = T0.this;
                View view2 = view;
                Intent intent2 = intent;
                ItemInfo itemInfo = t4;
                boolean z5 = z4;
                RunnableList startActivitySafely = t02.f6871d.startActivitySafely(view2, intent2, itemInfo);
                if (z5) {
                    if (startActivitySafely != null) {
                        startActivitySafely.add(new B0());
                    } else {
                        InteractionJankMonitorWrapper.end(71);
                    }
                }
            }
        });
    }

    public AbstractC0114f0 getManagedChannel() {
        return this.f6873f;
    }

    public CompletableFuture readFromAppSearch(final Query query, final AbstractC0683p abstractC0683p, final boolean z4) {
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        final CompletableFuture completableFuture = new CompletableFuture();
        final byte[][] bArr = {null};
        this.f6870c.thenAcceptAsync(new Consumer() { // from class: com.google.android.apps.nexuslauncher.allapps.C0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((GlobalSearchSession) obj).getByDocumentId("com.google.android.googlequicksearchbox", "OneSearchZeroStateGoogleSuggestions", T0.this.f6872e, C0719y0.g(), new P0(bArr, completableFuture));
            }
        }, (Executor) C0719y0.g()).exceptionally(new Function() { // from class: com.google.android.apps.nexuslauncher.allapps.D0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                completableFuture.completeExceptionally((Throwable) obj);
                return null;
            }
        });
        completableFuture.thenAcceptAsync(new Consumer() { // from class: com.google.android.apps.nexuslauncher.allapps.E0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                T0 t02 = T0.this;
                Query query2 = query;
                AbstractC0683p abstractC0683p2 = abstractC0683p;
                long j4 = elapsedRealtime;
                byte[][] bArr2 = bArr;
                C0858A c0858a = (C0858A) obj;
                t02.getClass();
                if (D2.f6521a) {
                    Log.d("WebAppSearchLogging", "Got zero state suggestions from AppSearch");
                }
                t02.b(query2, c0858a, abstractC0683p2, j4, bArr2[0], true);
            }
        }, (Executor) C0719y0.g()).exceptionally(new Function() { // from class: com.google.android.apps.nexuslauncher.allapps.F0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                T0 t02 = T0.this;
                long j4 = elapsedRealtime;
                Query query2 = query;
                AbstractC0683p abstractC0683p2 = abstractC0683p;
                boolean z5 = z4;
                Throwable th = (Throwable) obj;
                t02.getClass();
                if (!Utilities.isRunningInTestHarness()) {
                    Log.d("OneSearchSuggestProvider", "AppSearch 0-state cache not available, fallback to AGA", th);
                }
                long elapsedRealtime2 = SystemClock.elapsedRealtime() - j4;
                W w4 = t02.f6875h;
                w4.getClass();
                w4.f6960a.withInstanceId(new InstanceIdSequence().newInstanceId()).withLatency(elapsedRealtime2).withPackageId(LatencyLoggingPackageId.APPSEARCH.a()).withType(StatsLogManager.StatsLatencyLogger.LatencyType.FAIL).withQueryLength(w4.f6963d).log(NexusLauncherLatencyEvent.LAUNCHER_LATENCY_SUGGEST_TOTAL_DURATION);
                C0719y0.g().execute(new G0(t02, query2, abstractC0683p2, z5, 1));
                return null;
            }
        });
        return completableFuture;
    }

    public void setOneSearchConnection(C0882Z c0882z) {
        this.f6874g = c0882z;
    }
}
