package io.grpc.internal;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public final class u2 implements Executor {

    /* renamed from: f  reason: collision with root package name */
    public static final Logger f10383f = Logger.getLogger(u2.class.getName());

    /* renamed from: d  reason: collision with root package name */
    public boolean f10384d;

    /* renamed from: e  reason: collision with root package name */
    public ArrayDeque f10385e;

    public final void a() {
        while (true) {
            Runnable runnable = (Runnable) this.f10385e.poll();
            if (runnable == null) {
                return;
            }
            try {
                runnable.run();
            } catch (Throwable th) {
                Logger logger = f10383f;
                Level level = Level.SEVERE;
                logger.log(level, "Exception while executing runnable " + runnable, th);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0014, code lost:
        if (r6.f10385e != null) goto L11;
     */
    @Override // java.util.concurrent.Executor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void execute(java.lang.Runnable r7) {
        /*
            r6 = this;
            java.lang.String r0 = "Exception while executing runnable "
            java.lang.String r1 = "'task' must not be null."
            O2.m.h(r7, r1)
            boolean r1 = r6.f10384d
            if (r1 != 0) goto L40
            r1 = 1
            r6.f10384d = r1
            r1 = 0
            r7.run()     // Catch: java.lang.Throwable -> L17
            java.util.ArrayDeque r7 = r6.f10385e
            if (r7 == 0) goto L32
            goto L2f
        L17:
            r2 = move-exception
            java.util.logging.Logger r3 = io.grpc.internal.u2.f10383f     // Catch: java.lang.Throwable -> L35
            java.util.logging.Level r4 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L35
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L35
            r5.<init>(r0)     // Catch: java.lang.Throwable -> L35
            r5.append(r7)     // Catch: java.lang.Throwable -> L35
            java.lang.String r7 = r5.toString()     // Catch: java.lang.Throwable -> L35
            r3.log(r4, r7, r2)     // Catch: java.lang.Throwable -> L35
            java.util.ArrayDeque r7 = r6.f10385e
            if (r7 == 0) goto L32
        L2f:
            r6.a()
        L32:
            r6.f10384d = r1
            goto L51
        L35:
            r7 = move-exception
            java.util.ArrayDeque r0 = r6.f10385e
            if (r0 == 0) goto L3d
            r6.a()
        L3d:
            r6.f10384d = r1
            throw r7
        L40:
            java.util.ArrayDeque r0 = r6.f10385e
            if (r0 != 0) goto L4c
            java.util.ArrayDeque r0 = new java.util.ArrayDeque
            r1 = 4
            r0.<init>(r1)
            r6.f10385e = r0
        L4c:
            java.util.ArrayDeque r6 = r6.f10385e
            r6.add(r7)
        L51:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.internal.u2.execute(java.lang.Runnable):void");
    }
}
