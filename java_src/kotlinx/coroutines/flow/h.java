package kotlinx.coroutines.flow;
/* loaded from: classes.dex */
public final /* synthetic */ class h {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0075 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0082 A[Catch: all -> 0x009f, TRY_LEAVE, TryCatch #1 {all -> 0x009f, blocks: (B:13:0x0035, B:23:0x0065, B:27:0x007a, B:29:0x0082, B:18:0x0051, B:22:0x0061), top: B:46:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0097  */
    /* JADX WARN: Type inference failed for: r8v6, types: [kotlinx.coroutines.channels.r] */
    /* JADX WARN: Type inference failed for: r8v9, types: [kotlinx.coroutines.channels.r] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0094 -> B:14:0x0038). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(kotlinx.coroutines.flow.e r7, kotlinx.coroutines.channels.o r8, boolean r9, kotlin.coroutines.c r10) {
        /*
            boolean r0 = r10 instanceof kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1
            if (r0 == 0) goto L13
            r0 = r10
            kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1 r0 = (kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1 r0 = new kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            r5 = 2
            if (r2 == 0) goto L55
            if (r2 == r4) goto L43
            if (r2 != r5) goto L3b
            boolean r9 = r0.Z$0
            java.lang.Object r7 = r0.L$2
            kotlinx.coroutines.channels.g r7 = (kotlinx.coroutines.channels.g) r7
            java.lang.Object r8 = r0.L$1
            kotlinx.coroutines.channels.r r8 = (kotlinx.coroutines.channels.r) r8
            java.lang.Object r2 = r0.L$0
            kotlinx.coroutines.flow.e r2 = (kotlinx.coroutines.flow.e) r2
            e3.d.b(r10)     // Catch: java.lang.Throwable -> L9f
        L38:
            r10 = r7
            r7 = r2
            goto L65
        L3b:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L43:
            boolean r9 = r0.Z$0
            java.lang.Object r7 = r0.L$2
            kotlinx.coroutines.channels.g r7 = (kotlinx.coroutines.channels.g) r7
            java.lang.Object r8 = r0.L$1
            kotlinx.coroutines.channels.r r8 = (kotlinx.coroutines.channels.r) r8
            java.lang.Object r2 = r0.L$0
            kotlinx.coroutines.flow.e r2 = (kotlinx.coroutines.flow.e) r2
            e3.d.b(r10)     // Catch: java.lang.Throwable -> L9f
            goto L7a
        L55:
            e3.d.b(r10)
            java.lang.String r10 = "<this>"
            kotlin.jvm.internal.h.e(r7, r10)
            boolean r10 = r7 instanceof kotlinx.coroutines.flow.l
            if (r10 != 0) goto La8
            kotlinx.coroutines.channels.g r10 = r8.iterator()     // Catch: java.lang.Throwable -> L9f
        L65:
            r0.L$0 = r7     // Catch: java.lang.Throwable -> L9f
            r0.L$1 = r8     // Catch: java.lang.Throwable -> L9f
            r0.L$2 = r10     // Catch: java.lang.Throwable -> L9f
            r0.Z$0 = r9     // Catch: java.lang.Throwable -> L9f
            r0.label = r4     // Catch: java.lang.Throwable -> L9f
            java.lang.Object r2 = r10.a(r0)     // Catch: java.lang.Throwable -> L9f
            if (r2 != r1) goto L76
            return r1
        L76:
            r6 = r2
            r2 = r7
            r7 = r10
            r10 = r6
        L7a:
            java.lang.Boolean r10 = (java.lang.Boolean) r10     // Catch: java.lang.Throwable -> L9f
            boolean r10 = r10.booleanValue()     // Catch: java.lang.Throwable -> L9f
            if (r10 == 0) goto L97
            java.lang.Object r10 = r7.next()     // Catch: java.lang.Throwable -> L9f
            r0.L$0 = r2     // Catch: java.lang.Throwable -> L9f
            r0.L$1 = r8     // Catch: java.lang.Throwable -> L9f
            r0.L$2 = r7     // Catch: java.lang.Throwable -> L9f
            r0.Z$0 = r9     // Catch: java.lang.Throwable -> L9f
            r0.label = r5     // Catch: java.lang.Throwable -> L9f
            java.lang.Object r10 = r2.emit(r10, r0)     // Catch: java.lang.Throwable -> L9f
            if (r10 != r1) goto L38
            return r1
        L97:
            if (r9 == 0) goto L9c
            kotlinx.coroutines.channels.l.a(r8, r3)
        L9c:
            e3.f r7 = e3.f.f9037a
            return r7
        L9f:
            r7 = move-exception
            throw r7     // Catch: java.lang.Throwable -> La1
        La1:
            r10 = move-exception
            if (r9 == 0) goto La7
            kotlinx.coroutines.channels.l.a(r8, r7)
        La7:
            throw r10
        La8:
            kotlinx.coroutines.flow.l r7 = (kotlinx.coroutines.flow.l) r7
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.h.a(kotlinx.coroutines.flow.e, kotlinx.coroutines.channels.o, boolean, kotlin.coroutines.c):java.lang.Object");
    }
}
