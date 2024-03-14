package kotlinx.coroutines.internal;

import a.C0147a;
import kotlin.Result;
/* loaded from: classes.dex */
public final class D {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f11442a = 0;

    static {
        Object a4;
        Object a5;
        Exception exc = new Exception();
        String simpleName = C0147a.class.getSimpleName();
        StackTraceElement stackTraceElement = exc.getStackTrace()[0];
        new StackTraceElement("_COROUTINE.".concat(simpleName), "_", stackTraceElement.getFileName(), stackTraceElement.getLineNumber());
        try {
            a4 = Class.forName("kotlin.coroutines.jvm.internal.BaseContinuationImpl").getCanonicalName();
        } catch (Throwable th) {
            a4 = e3.d.a(th);
        }
        if (Result.a(a4) != null) {
            a4 = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        String str = (String) a4;
        try {
            a5 = D.class.getCanonicalName();
        } catch (Throwable th2) {
            a5 = e3.d.a(th2);
        }
        if (Result.a(a5) != null) {
            a5 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
        String str2 = (String) a5;
    }
}
