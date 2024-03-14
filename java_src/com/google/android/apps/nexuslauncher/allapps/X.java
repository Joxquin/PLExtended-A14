package com.google.android.apps.nexuslauncher.allapps;

import X2.AbstractC0117h;
import android.os.SystemClock;
import android.util.Log;
import android.widget.RemoteViews;
import androidx.slice.Slice;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.views.ActivityContext;
import com.google.protobuf.ByteString;
import com.google.protobuf.C0784w;
import f2.C0859B;
import f2.C0860C;
import f2.C0862E;
import f2.C0873P;
import f2.C0874Q;
import f2.C0876T;
import f2.C0882Z;
import f2.C0884a0;
import f2.C0907m;
import f2.C0909n;
import f2.C0913p;
import io.grpc.MethodDescriptor$MethodType;
import java.util.List;
import java.util.Objects;
import java.util.stream.Stream;
/* loaded from: classes.dex */
public final /* synthetic */ class X implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f6968d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f6969e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f6970f;

    public /* synthetic */ X(int i4, Object obj, Object obj2) {
        this.f6968d = i4;
        this.f6969e = obj;
        this.f6970f = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6968d) {
            case 0:
                byte[] bArr = (byte[]) this.f6970f;
                T0 t02 = ((C0719y0) this.f6969e).f7285r;
                t02.getClass();
                if (D2.f6522b) {
                    Log.d("AGASessionSummaryLog", "logStartSession");
                }
                if (D2.f6521a) {
                    StringBuilder sb = new StringBuilder("logStartSession, hasCache=");
                    sb.append(bArr != null);
                    Log.d("WebAppSearchLogging", sb.toString());
                }
                C0873P e4 = C0874Q.e();
                e4.a(SystemClock.elapsedRealtime());
                if (bArr != null) {
                    e4.b(ByteString.j(bArr, 0, bArr.length));
                }
                C0882Z d4 = t02.d();
                C0874Q c0874q = (C0874Q) e4.build();
                AbstractC0117h abstractC0117h = d4.f2403a;
                X2.u0 u0Var = C0884a0.f9337n;
                if (u0Var == null) {
                    synchronized (C0884a0.class) {
                        u0Var = C0884a0.f9337n;
                        if (u0Var == null) {
                            X2.s0 b4 = X2.u0.b();
                            b4.f2226c = MethodDescriptor$MethodType.UNARY;
                            b4.f2227d = X2.u0.a("com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest", "LogStartSession");
                            b4.f2228e = true;
                            C0874Q d5 = C0874Q.d();
                            C0784w c0784w = Z2.c.f2379a;
                            b4.f2224a = new Z2.b(d5);
                            b4.f2225b = new Z2.b(C0876T.b());
                            X2.u0 a4 = b4.a();
                            C0884a0.f9337n = a4;
                            u0Var = a4;
                        }
                    }
                }
                a3.e.b(abstractC0117h.g(u0Var, d4.f2404b), c0874q);
                return;
            case 1:
                f2.J0 j02 = (f2.J0) this.f6970f;
                T0 t03 = ((C0719y0) this.f6969e).f7285r;
                t03.getClass();
                if (D2.f6522b) {
                    Log.d("AGASessionSummaryLog", "logAbandonSession");
                }
                C0859B e5 = C0860C.e();
                e5.b(j02);
                e5.a(SystemClock.elapsedRealtime());
                C0860C c0860c = (C0860C) e5.build();
                C0882Z d6 = t03.d();
                AbstractC0117h abstractC0117h2 = d6.f2403a;
                X2.u0 u0Var2 = C0884a0.f9338o;
                if (u0Var2 == null) {
                    synchronized (C0884a0.class) {
                        u0Var2 = C0884a0.f9338o;
                        if (u0Var2 == null) {
                            X2.s0 b5 = X2.u0.b();
                            b5.f2226c = MethodDescriptor$MethodType.UNARY;
                            b5.f2227d = X2.u0.a("com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest", "LogAbandonedSession");
                            b5.f2228e = true;
                            C0860C d7 = C0860C.d();
                            C0784w c0784w2 = Z2.c.f2379a;
                            b5.f2224a = new Z2.b(d7);
                            b5.f2225b = new Z2.b(C0862E.b());
                            X2.u0 a5 = b5.a();
                            C0884a0.f9338o = a5;
                            u0Var2 = a5;
                        }
                    }
                }
                a3.e.b(abstractC0117h2.g(u0Var2, d6.f2404b), c0860c);
                T0.e(j02);
                return;
            case 2:
                C0719y0 c0719y0 = (C0719y0) this.f6969e;
                c0719y0.getClass();
                Stream stream = ((List) this.f6970f).stream();
                StatsLogManager.StatsLogger logger = ((ActivityContext) c0719y0.f7271d).getStatsLogManager().logger();
                Objects.requireNonNull(logger);
                stream.map(new C0628b0(1, logger)).forEach(new C0660j0(5));
                return;
            case 3:
                String str = (String) this.f6970f;
                T0 t04 = ((C0719y0) this.f6969e).f7285r;
                if (str == null) {
                    t04.getClass();
                    Log.e("OneSearchSuggestProvider", "Can't delete suggestion - null id?");
                    return;
                }
                C0882Z d8 = t04.d();
                C0907m d9 = C0909n.d();
                d9.a(str);
                C0909n c0909n = (C0909n) d9.build();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                AbstractC0117h abstractC0117h3 = d8.f2403a;
                X2.u0 u0Var3 = C0884a0.f9335l;
                if (u0Var3 == null) {
                    synchronized (C0884a0.class) {
                        u0Var3 = C0884a0.f9335l;
                        if (u0Var3 == null) {
                            X2.s0 b6 = X2.u0.b();
                            b6.f2226c = MethodDescriptor$MethodType.UNARY;
                            b6.f2227d = X2.u0.a("com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest", "DeleteSuggestion");
                            b6.f2228e = true;
                            C0909n c4 = C0909n.c();
                            C0784w c0784w3 = Z2.c.f2379a;
                            b6.f2224a = new Z2.b(c4);
                            b6.f2225b = new Z2.b(C0913p.b());
                            u0Var3 = b6.a();
                            C0884a0.f9335l = u0Var3;
                        }
                    }
                }
                a3.c b7 = a3.e.b(abstractC0117h3.g(u0Var3, d8.f2404b), c0909n);
                M0 m02 = new M0(t04, elapsedRealtime, 1);
                com.google.common.util.concurrent.e.a();
                com.google.common.util.concurrent.d.a(b7, m02);
                return;
            case 4:
                ((H2) this.f6969e).updateAppWidget((RemoteViews) this.f6970f);
                return;
            default:
                ((ViewTreeObserver$OnWindowVisibilityChangeListenerC0715x0) this.f6969e).f7249f.forEach(new C0691r0(2, (Slice) this.f6970f));
                return;
        }
    }
}
