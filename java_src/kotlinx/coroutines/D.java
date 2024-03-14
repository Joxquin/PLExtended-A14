package kotlinx.coroutines;

import kotlin.Result;
import kotlinx.coroutines.internal.C1240g;
/* loaded from: classes.dex */
public final class D {
    public static final String a(Object obj) {
        kotlin.jvm.internal.h.e(obj, "<this>");
        return obj.getClass().getSimpleName();
    }

    public static final String b(Object obj) {
        kotlin.jvm.internal.h.e(obj, "<this>");
        String hexString = Integer.toHexString(System.identityHashCode(obj));
        kotlin.jvm.internal.h.d(hexString, "toHexString(System.identityHashCode(this))");
        return hexString;
    }

    public static final String c(kotlin.coroutines.c cVar) {
        String str;
        kotlin.jvm.internal.h.e(cVar, "<this>");
        if (cVar instanceof C1240g) {
            return cVar.toString();
        }
        try {
            str = cVar + "@" + b(cVar);
        } catch (Throwable th) {
            str = e3.d.a(th);
        }
        Throwable a4 = Result.a(str);
        String str2 = str;
        if (a4 != null) {
            str2 = cVar.getClass().getName() + "@" + b(cVar);
        }
        return (String) str2;
    }
}
