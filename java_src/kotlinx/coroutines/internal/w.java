package kotlinx.coroutines.internal;
/* loaded from: classes.dex */
public final class w {
    public static final m3.l a(final m3.l lVar, final Object obj, final kotlin.coroutines.i context) {
        kotlin.jvm.internal.h.e(context, "context");
        return new m3.l() { // from class: kotlinx.coroutines.internal.OnUndeliveredElementKt$bindCancellationFun$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // m3.l
            public final Object invoke(Object obj2) {
                kotlin.jvm.internal.h.e((Throwable) obj2, "<anonymous parameter 0>");
                w.b(m3.l.this, obj, context);
                return e3.f.f9037a;
            }
        };
    }

    public static final void b(m3.l lVar, Object obj, kotlin.coroutines.i context) {
        kotlin.jvm.internal.h.e(lVar, "<this>");
        kotlin.jvm.internal.h.e(context, "context");
        UndeliveredElementException c4 = c(lVar, obj, null);
        if (c4 != null) {
            kotlinx.coroutines.A.a(context, c4);
        }
    }

    public static final UndeliveredElementException c(m3.l lVar, Object obj, UndeliveredElementException undeliveredElementException) {
        kotlin.jvm.internal.h.e(lVar, "<this>");
        try {
            lVar.invoke(obj);
        } catch (Throwable th) {
            if (undeliveredElementException == null || undeliveredElementException.getCause() == th) {
                return new UndeliveredElementException("Exception in undelivered element handler for " + obj, th);
            }
            e3.a.a(undeliveredElementException, th);
        }
        return undeliveredElementException;
    }
}
