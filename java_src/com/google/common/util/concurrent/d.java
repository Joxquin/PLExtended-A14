package com.google.common.util.concurrent;

import O2.m;
import R2.i;
import R2.j;
import java.util.concurrent.Future;
/* loaded from: classes.dex */
public final class d {
    public static void a(a3.c cVar, i iVar) {
        cVar.c(new j(cVar, iVar), DirectExecutor.f8471d);
    }

    public static Object b(Future future) {
        Object obj;
        m.l("Future was expected to be done: %s", future, future.isDone());
        boolean z4 = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z4 = true;
            } catch (Throwable th) {
                if (z4) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z4) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }
}
