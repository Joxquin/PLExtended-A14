package kotlin.coroutines.intrinsics;

import e3.d;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.c;
import kotlin.coroutines.i;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.l;
import m3.p;
/* loaded from: classes.dex */
public class a {
    public static final c a(final Object obj, final c completion, final p pVar) {
        h.e(completion, "completion");
        if (pVar instanceof BaseContinuationImpl) {
            return ((BaseContinuationImpl) pVar).create(obj, completion);
        }
        final i context = completion.getContext();
        return context == EmptyCoroutineContext.f11247d ? new RestrictedContinuationImpl(obj, completion, pVar) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3
            final /* synthetic */ Object $receiver$inlined;
            final /* synthetic */ p $this_createCoroutineUnintercepted$inlined;
            private int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(completion);
                this.$this_createCoroutineUnintercepted$inlined = pVar;
                h.c(completion, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj2) {
                int i4 = this.label;
                if (i4 != 0) {
                    if (i4 == 1) {
                        this.label = 2;
                        d.b(obj2);
                        return obj2;
                    }
                    throw new IllegalStateException("This coroutine had already completed".toString());
                }
                this.label = 1;
                d.b(obj2);
                h.c(this.$this_createCoroutineUnintercepted$inlined, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>");
                p pVar2 = this.$this_createCoroutineUnintercepted$inlined;
                l.a(2, pVar2);
                return pVar2.invoke(this.$receiver$inlined, this);
            }
        } : new ContinuationImpl(completion, context, pVar, obj) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4
            final /* synthetic */ Object $receiver$inlined;
            final /* synthetic */ p $this_createCoroutineUnintercepted$inlined;
            private int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(completion, context);
                this.$this_createCoroutineUnintercepted$inlined = pVar;
                this.$receiver$inlined = obj;
                h.c(completion, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj2) {
                int i4 = this.label;
                if (i4 != 0) {
                    if (i4 == 1) {
                        this.label = 2;
                        d.b(obj2);
                        return obj2;
                    }
                    throw new IllegalStateException("This coroutine had already completed".toString());
                }
                this.label = 1;
                d.b(obj2);
                h.c(this.$this_createCoroutineUnintercepted$inlined, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>");
                p pVar2 = this.$this_createCoroutineUnintercepted$inlined;
                l.a(2, pVar2);
                return pVar2.invoke(this.$receiver$inlined, this);
            }
        };
    }

    public static final c b(c cVar) {
        c intercepted;
        h.e(cVar, "<this>");
        ContinuationImpl continuationImpl = cVar instanceof ContinuationImpl ? (ContinuationImpl) cVar : null;
        return (continuationImpl == null || (intercepted = continuationImpl.intercepted()) == null) ? cVar : intercepted;
    }
}
