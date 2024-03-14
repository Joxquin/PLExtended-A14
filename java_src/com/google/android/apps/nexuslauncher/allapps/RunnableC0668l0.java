package com.google.android.apps.nexuslauncher.allapps;

import X2.AbstractC0117h;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.util.Log;
import com.android.launcher3.views.ActivityContext;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import com.google.protobuf.C0784w;
import g2.C0957d;
import g2.C0959f;
import io.grpc.MethodDescriptor$MethodType;
import io.grpc.binder.AndroidComponentAddress;
import io.grpc.internal.C1069z1;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.l0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0668l0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f7114d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ A f7115e;

    public /* synthetic */ RunnableC0668l0(A a4, int i4) {
        this.f7114d = i4;
        this.f7115e = a4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ServiceInfo serviceInfo;
        switch (this.f7114d) {
            case 0:
                A a4 = this.f7115e;
                if (a4.f6499h != null) {
                    Log.d("GmsPlayProvider", "Shut down the binder channel");
                    a4.f6499h.i();
                    return;
                }
                return;
            case 1:
                A a5 = this.f7115e;
                C1069z1 c1069z1 = a5.f6499h;
                if (c1069z1 != null && !c1069z1.h() && a5.f6500i != null) {
                    a5.b();
                    Log.d("GmsPlayProvider", "Established or reuse existing binder channel authority=" + a5.f6499h.a());
                    return;
                }
                C0719y0 c0719y0 = a5.f6492a;
                ((ActivityContext) c0719y0.f7271d).getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCH_GMS_PLAY_INIT_CHANNEL);
                ResolveInfo resolveService = c0719y0.getPackageManager().resolveService(new Intent("com.google.android.gms.play.cloud.search.grpc.io.action.BIND").setPackage("com.google.android.gms"), PackageManager.ResolveInfoFlags.of(0L));
                ComponentName componentName = (resolveService == null || (serviceInfo = resolveService.serviceInfo) == null) ? null : new ComponentName(serviceInfo.applicationInfo.packageName, serviceInfo.name);
                if (componentName == null) {
                    ((ActivityContext) c0719y0.f7271d).getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCH_GMS_PLAY_EMPTY_COMPONENT_NAME);
                    Log.e("GmsPlayProvider", "Failed to create component");
                    return;
                }
                io.grpc.binder.d dVar = new io.grpc.binder.d(c0719y0, new AndroidComponentAddress(new Intent("com.google.android.gms.play.cloud.search.grpc.io.action.BIND").setComponent(componentName).cloneFilter()));
                dVar.f9712d = new io.grpc.binder.i();
                C1069z1 c1069z12 = (C1069z1) dVar.a();
                a5.f6499h = c1069z12;
                a5.f6500i = (g2.v) io.grpc.stub.a.a(new g2.u(), c1069z12);
                if (a5.a(true)) {
                    a5.b();
                    Log.d("GmsPlayProvider", "Created the binder channel successfully for end point component =" + componentName + " , mChannel=" + a5.f6499h + " , mConnection=" + a5.f6500i);
                    return;
                }
                return;
            default:
                A a6 = this.f7115e;
                if (a6.a(false)) {
                    a6.f6494c.b(a6.getEntryPoint());
                    a6.f6496e.a((g2.B) a6.f6494c.build());
                    g2.v vVar = a6.f6500i;
                    C0957d c0957d = (C0957d) a6.f6496e.build();
                    AbstractC0117h abstractC0117h = vVar.f2403a;
                    X2.u0 u0Var = g2.w.f9478d;
                    if (u0Var == null) {
                        synchronized (g2.w.class) {
                            u0Var = g2.w.f9478d;
                            if (u0Var == null) {
                                X2.s0 b4 = X2.u0.b();
                                b4.f2226c = MethodDescriptor$MethodType.UNARY;
                                b4.f2227d = X2.u0.a("com.google.android.gms.play.cloud.search.grpc.PlayCloudSearchService", "EndSession");
                                b4.f2228e = true;
                                C0957d c4 = C0957d.c();
                                C0784w c0784w = Z2.c.f2379a;
                                b4.f2224a = new Z2.b(c4);
                                b4.f2225b = new Z2.b(C0959f.b());
                                X2.u0 a7 = b4.a();
                                g2.w.f9478d = a7;
                                u0Var = a7;
                            }
                        }
                    }
                    a3.e.b(abstractC0117h.g(u0Var, vVar.f2404b), c0957d);
                    return;
                }
                return;
        }
    }
}
