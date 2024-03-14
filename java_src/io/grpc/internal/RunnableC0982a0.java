package io.grpc.internal;

import X2.C0107c;
import io.grpc.ProxiedSocketAddress;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.util.Collections;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: io.grpc.internal.a0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0982a0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final X2.x0 f10049d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C0994d0 f10050e;

    public RunnableC0982a0(C0994d0 c0994d0, X2.x0 x0Var) {
        this.f10050e = c0994d0;
        O2.m.h(x0Var, "savedListener");
        this.f10049d = x0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable th;
        Y y4;
        IOException e4;
        X2.P0 p02;
        Z z4;
        C0107c c0107c;
        Y y5;
        List list;
        Logger logger = C0994d0.f10067s;
        Level level = Level.FINER;
        if (logger.isLoggable(level)) {
            logger.finer("Attempting DNS resolution of " + this.f10050e.f10079f);
        }
        Y y6 = null;
        X2.w0 w0Var = null;
        Y y7 = null;
        try {
            try {
                C0994d0 c0994d0 = this.f10050e;
                ProxiedSocketAddress a4 = c0994d0.f10074a.a(InetSocketAddress.createUnresolved(c0994d0.f10079f, c0994d0.f10080g));
                X2.I i4 = a4 != null ? new X2.I(a4) : null;
                List emptyList = Collections.emptyList();
                c0107c = C0107c.f2181b;
                if (i4 != null) {
                    if (logger.isLoggable(level)) {
                        logger.finer("Using proxy address " + i4);
                    }
                    list = Collections.singletonList(i4);
                    y5 = null;
                } else {
                    y4 = this.f10050e.e();
                    try {
                        X2.L0 l02 = y4.f10035a;
                        if (l02 != null) {
                            this.f10049d.a(l02);
                            this.f10050e.f10083j.execute(new Z(this, y4.f10035a == null));
                            return;
                        }
                        List list2 = y4.f10036b;
                        if (list2 != null) {
                            emptyList = list2;
                        }
                        X2.w0 w0Var2 = y4.f10037c;
                        w0Var = w0Var2 != null ? w0Var2 : null;
                        y5 = y4;
                        list = emptyList;
                    } catch (IOException e5) {
                        e4 = e5;
                        y7 = y4;
                        this.f10049d.a(X2.L0.f2135n.f("Unable to resolve host " + this.f10050e.f10079f).e(e4));
                        if (y7 != null || y7.f10035a != null) {
                            r5 = false;
                        }
                        p02 = this.f10050e.f10083j;
                        z4 = new Z(this, r5);
                        p02.execute(z4);
                    } catch (Throwable th2) {
                        th = th2;
                        if (y4 != null || y4.f10035a != null) {
                            r5 = false;
                        }
                        this.f10050e.f10083j.execute(new Z(this, r5));
                        throw th;
                    }
                }
            } catch (IOException e6) {
                e = e6;
            }
        } catch (Throwable th3) {
            th = th3;
        }
        try {
            this.f10049d.d(new X2.z0(list, c0107c, w0Var));
            if (y5 == null || y5.f10035a != null) {
                r5 = false;
            }
            p02 = this.f10050e.f10083j;
            z4 = new Z(this, r5);
        } catch (IOException e7) {
            e = e7;
            y7 = y5;
            e4 = e;
            this.f10049d.a(X2.L0.f2135n.f("Unable to resolve host " + this.f10050e.f10079f).e(e4));
            if (y7 != null) {
            }
            r5 = false;
            p02 = this.f10050e.f10083j;
            z4 = new Z(this, r5);
            p02.execute(z4);
        } catch (Throwable th4) {
            th = th4;
            y6 = y5;
            th = th;
            y4 = y6;
            if (y4 != null) {
            }
            r5 = false;
            this.f10050e.f10083j.execute(new Z(this, r5));
            throw th;
        }
        p02.execute(z4);
    }
}
