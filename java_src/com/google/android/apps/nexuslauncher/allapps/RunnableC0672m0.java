package com.google.android.apps.nexuslauncher.allapps;

import X2.AbstractC0117h;
import android.app.search.Query;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import android.widget.RemoteViews;
import com.android.launcher3.util.Executors;
import com.android.launcher3.widget.PendingAddWidgetInfo;
import com.android.systemui.shared.system.PeopleProviderUtils;
import com.google.android.gms.play.cloud.search.grpc.EntryPoint;
import com.google.protobuf.C0784w;
import f2.C0882Z;
import f2.C0884a0;
import io.grpc.MethodDescriptor$MethodType;
import java.util.Objects;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.m0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0672m0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f7123d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C0719y0 f7124e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f7125f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ Object f7126g;

    public /* synthetic */ RunnableC0672m0(C0719y0 c0719y0, Object obj, Object obj2, int i4) {
        this.f7123d = i4;
        this.f7124e = c0719y0;
        this.f7125f = obj;
        this.f7126g = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7123d) {
            case 0:
                C0719y0 c0719y0 = this.f7124e;
                Query query = (Query) this.f7125f;
                AbstractC0683p abstractC0683p = (AbstractC0683p) this.f7126g;
                A a4 = c0719y0.f7286s;
                if (a4.a(false)) {
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    String input = query.getInput();
                    EntryPoint entryPoint = a4.getEntryPoint();
                    g2.x xVar = a4.f6494c;
                    xVar.b(entryPoint);
                    g2.l i4 = g2.m.i();
                    i4.d((g2.B) xVar.build());
                    i4.c(input);
                    i4.b();
                    i4.e(elapsedRealtime);
                    i4.f(a4.f6492a.f7283p.f7198u);
                    i4.a(a4.f6497f);
                    g2.m mVar = (g2.m) i4.build();
                    g2.v vVar = a4.f6500i;
                    AbstractC0117h abstractC0117h = vVar.f2403a;
                    X2.u0 u0Var = g2.w.f9475a;
                    if (u0Var == null) {
                        synchronized (g2.w.class) {
                            u0Var = g2.w.f9475a;
                            if (u0Var == null) {
                                X2.s0 b4 = X2.u0.b();
                                b4.f2226c = MethodDescriptor$MethodType.UNARY;
                                b4.f2227d = X2.u0.a("com.google.android.gms.play.cloud.search.grpc.PlayCloudSearchService", "GetCompletions");
                                b4.f2228e = true;
                                g2.m h4 = g2.m.h();
                                C0784w c0784w = Z2.c.f2379a;
                                b4.f2224a = new Z2.b(h4);
                                b4.f2225b = new Z2.b(g2.p.c());
                                X2.u0 a5 = b4.a();
                                g2.w.f9475a = a5;
                                u0Var = a5;
                            }
                        }
                    }
                    a3.c b5 = a3.e.b(abstractC0117h.g(u0Var, vVar.f2404b), mVar);
                    if (B.f6508a) {
                        Log.d("GmsPlayProvider", "Sending request to Gms Play to get completions.");
                    }
                    C0722z c0722z = new C0722z(a4, query, elapsedRealtime, abstractC0683p);
                    com.google.common.util.concurrent.e.a();
                    com.google.common.util.concurrent.d.a(b5, c0722z);
                    return;
                }
                return;
            case 1:
                Executors.MAIN_EXECUTOR.post(new X(4, (H2) this.f7126g, (RemoteViews) ((Bundle) Objects.requireNonNullElse(this.f7124e.f7271d.getContentResolver().call(PeopleProviderUtils.PEOPLE_PROVIDER_AUTHORITY, PeopleProviderUtils.GET_PEOPLE_TILE_PREVIEW_METHOD, (String) null, ((PendingAddWidgetInfo) this.f7125f).bindOptions), new Bundle())).getParcelable(PeopleProviderUtils.RESPONSE_KEY_REMOTE_VIEWS)));
                return;
            default:
                C0719y0 c0719y02 = this.f7124e;
                String str = (String) this.f7125f;
                String str2 = (String) this.f7126g;
                T0 t02 = c0719y02.f7285r;
                if (str == null) {
                    t02.getClass();
                    Log.e("OneSearchSuggestProvider", "Can't report suggestion - null id?");
                    return;
                }
                C0882Z d4 = t02.d();
                f2.y0 e4 = f2.z0.e();
                e4.b(str);
                if (str2 != null) {
                    e4.a(str2);
                }
                f2.z0 z0Var = (f2.z0) e4.build();
                long elapsedRealtime2 = SystemClock.elapsedRealtime();
                AbstractC0117h abstractC0117h2 = d4.f2403a;
                X2.u0 u0Var2 = C0884a0.f9336m;
                if (u0Var2 == null) {
                    synchronized (C0884a0.class) {
                        u0Var2 = C0884a0.f9336m;
                        if (u0Var2 == null) {
                            X2.s0 b6 = X2.u0.b();
                            b6.f2226c = MethodDescriptor$MethodType.UNARY;
                            b6.f2227d = X2.u0.a("com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest", "ReportSuggestion");
                            b6.f2228e = true;
                            f2.z0 d5 = f2.z0.d();
                            C0784w c0784w2 = Z2.c.f2379a;
                            b6.f2224a = new Z2.b(d5);
                            b6.f2225b = new Z2.b(f2.B0.b());
                            X2.u0 a6 = b6.a();
                            C0884a0.f9336m = a6;
                            u0Var2 = a6;
                        }
                    }
                }
                a3.c b7 = a3.e.b(abstractC0117h2.g(u0Var2, d4.f2404b), z0Var);
                M0 m02 = new M0(t02, elapsedRealtime2, 0);
                com.google.common.util.concurrent.e.a();
                com.google.common.util.concurrent.d.a(b7, m02);
                return;
        }
    }
}
