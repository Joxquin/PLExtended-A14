package com.google.android.apps.nexuslauncher.allapps;

import X2.AbstractC0114f0;
import X2.AbstractC0117h;
import android.os.Build;
import android.util.Log;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchEntryPoint;
import com.google.android.gms.play.cloud.search.grpc.EntryPoint;
import com.google.protobuf.C0784w;
import g2.C0953A;
import g2.C0956c;
import g2.C0957d;
import io.grpc.MethodDescriptor$MethodType;
import io.grpc.internal.C1069z1;
/* loaded from: classes.dex */
public final class A {

    /* renamed from: a  reason: collision with root package name */
    public final C0719y0 f6492a;

    /* renamed from: b  reason: collision with root package name */
    public final W f6493b;

    /* renamed from: c  reason: collision with root package name */
    public final g2.x f6494c;

    /* renamed from: d  reason: collision with root package name */
    public final g2.E f6495d;

    /* renamed from: e  reason: collision with root package name */
    public final C0956c f6496e;

    /* renamed from: f  reason: collision with root package name */
    public final int f6497f;

    /* renamed from: g  reason: collision with root package name */
    public final int f6498g;

    /* renamed from: h  reason: collision with root package name */
    public C1069z1 f6499h;

    /* renamed from: i  reason: collision with root package name */
    public g2.v f6500i;

    public A(C0719y0 c0719y0) {
        this.f6492a = c0719y0;
        this.f6493b = new W(c0719y0);
        g2.y e4 = C0953A.e();
        e4.a();
        e4.b();
        e4.c(Build.VERSION.CODENAME);
        g2.x d4 = g2.B.d();
        d4.a((C0953A) e4.build());
        this.f6494c = d4;
        this.f6495d = g2.F.d();
        this.f6496e = C0957d.d();
        this.f6497f = (int) c0719y0.getResources().getDimension(R.dimen.search_row_icon_size);
        this.f6498g = (int) c0719y0.getResources().getDimension(R.dimen.gms_play_icon_radius);
    }

    public final boolean a(boolean z4) {
        C1069z1 c1069z1 = this.f6499h;
        if (c1069z1 == null || c1069z1.h() || this.f6500i == null) {
            if (z4) {
                Log.e("GmsPlayProvider", "Channel is not established");
                ((ActivityContext) this.f6492a.f7271d).getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCH_GMS_PLAY_CHANNEL_FAIL);
                return false;
            }
            return false;
        }
        return true;
    }

    public final void b() {
        this.f6494c.b(getEntryPoint());
        this.f6495d.a((g2.B) this.f6494c.build());
        g2.v vVar = this.f6500i;
        g2.F f4 = (g2.F) this.f6495d.build();
        AbstractC0117h abstractC0117h = vVar.f2403a;
        X2.u0 u0Var = g2.w.f9477c;
        if (u0Var == null) {
            synchronized (g2.w.class) {
                u0Var = g2.w.f9477c;
                if (u0Var == null) {
                    X2.s0 b4 = X2.u0.b();
                    b4.f2226c = MethodDescriptor$MethodType.UNARY;
                    b4.f2227d = X2.u0.a("com.google.android.gms.play.cloud.search.grpc.PlayCloudSearchService", "StartSession");
                    b4.f2228e = true;
                    g2.F c4 = g2.F.c();
                    C0784w c0784w = Z2.c.f2379a;
                    b4.f2224a = new Z2.b(c4);
                    b4.f2225b = new Z2.b(g2.H.b());
                    u0Var = b4.a();
                    g2.w.f9477c = u0Var;
                }
            }
        }
        a3.e.b(abstractC0117h.g(u0Var, vVar.f2404b), f4);
    }

    public EntryPoint getEntryPoint() {
        OneSearchEntryPoint oneSearchEntryPoint = this.f6492a.f7287t.searchEntryState;
        EntryPoint entryPoint = EntryPoint.ENTRY_POINT_UNKNOWN;
        return oneSearchEntryPoint != null ? oneSearchEntryPoint == OneSearchEntryPoint.ENTRY_POINT_ALL_APPS ? EntryPoint.ENTRY_POINT_ALL_APPS : oneSearchEntryPoint == OneSearchEntryPoint.ENTRY_POINT_QSB ? EntryPoint.ENTRY_POINT_HOMESCREEN_SEARCH_BOX : entryPoint : entryPoint;
    }

    public AbstractC0114f0 getManagedChannel() {
        return this.f6499h;
    }

    public void setConnection(g2.v vVar) {
        this.f6500i = vVar;
    }
}
