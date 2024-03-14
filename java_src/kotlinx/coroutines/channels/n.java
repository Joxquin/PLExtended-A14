package kotlinx.coroutines.channels;
/* loaded from: classes.dex */
public final class n {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(kotlinx.coroutines.channels.p r4, m3.a r5, kotlin.coroutines.c r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.channels.ProduceKt$awaitClose$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.channels.ProduceKt$awaitClose$1 r0 = (kotlinx.coroutines.channels.ProduceKt$awaitClose$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.ProduceKt$awaitClose$1 r0 = new kotlinx.coroutines.channels.ProduceKt$awaitClose$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            java.lang.Object r4 = r0.L$1
            r5 = r4
            m3.a r5 = (m3.a) r5
            java.lang.Object r4 = r0.L$0
            kotlinx.coroutines.channels.p r4 = (kotlinx.coroutines.channels.p) r4
            e3.d.b(r6)     // Catch: java.lang.Throwable -> L73
            goto L6d
        L30:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L38:
            e3.d.b(r6)
            kotlin.coroutines.i r6 = r0.getContext()
            kotlinx.coroutines.Z r2 = kotlinx.coroutines.Z.f11329d
            kotlin.coroutines.g r6 = r6.e(r2)
            if (r6 != r4) goto L49
            r6 = r3
            goto L4a
        L49:
            r6 = 0
        L4a:
            if (r6 == 0) goto L78
            r0.L$0 = r4     // Catch: java.lang.Throwable -> L73
            r0.L$1 = r5     // Catch: java.lang.Throwable -> L73
            r0.label = r3     // Catch: java.lang.Throwable -> L73
            kotlinx.coroutines.h r6 = new kotlinx.coroutines.h     // Catch: java.lang.Throwable -> L73
            kotlin.coroutines.c r0 = kotlin.coroutines.intrinsics.a.b(r0)     // Catch: java.lang.Throwable -> L73
            r6.<init>(r3, r0)     // Catch: java.lang.Throwable -> L73
            r6.p()     // Catch: java.lang.Throwable -> L73
            kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1 r0 = new kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1     // Catch: java.lang.Throwable -> L73
            r0.<init>(r6)     // Catch: java.lang.Throwable -> L73
            r4.m(r0)     // Catch: java.lang.Throwable -> L73
            java.lang.Object r4 = r6.o()     // Catch: java.lang.Throwable -> L73
            if (r4 != r1) goto L6d
            return r1
        L6d:
            r5.invoke()
            e3.f r4 = e3.f.f9037a
            return r4
        L73:
            r4 = move-exception
            r5.invoke()
            throw r4
        L78:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "awaitClose() can only be invoked from the producer context"
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.n.a(kotlinx.coroutines.channels.p, m3.a, kotlin.coroutines.c):java.lang.Object");
    }
}
