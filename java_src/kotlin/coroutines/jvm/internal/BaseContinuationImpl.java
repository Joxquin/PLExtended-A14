package kotlin.coroutines.jvm.internal;

import g3.b;
import g3.d;
import g3.e;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.coroutines.c;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public abstract class BaseContinuationImpl implements c, b, Serializable {
    private final c completion;

    public BaseContinuationImpl(c cVar) {
        this.completion = cVar;
    }

    public c create(c completion) {
        h.e(completion, "completion");
        throw new UnsupportedOperationException("create(Continuation) has not been overridden");
    }

    @Override // g3.b
    public b getCallerFrame() {
        c cVar = this.completion;
        if (cVar instanceof b) {
            return (b) cVar;
        }
        return null;
    }

    public final c getCompletion() {
        return this.completion;
    }

    public StackTraceElement getStackTraceElement() {
        int i4;
        String str;
        g3.c cVar = (g3.c) getClass().getAnnotation(g3.c.class);
        String str2 = null;
        if (cVar == null) {
            return null;
        }
        int v4 = cVar.v();
        if (v4 > 1) {
            throw new IllegalStateException(("Debug metadata version mismatch. Expected: 1, got " + v4 + ". Please update the Kotlin standard library.").toString());
        }
        try {
            Field declaredField = getClass().getDeclaredField("label");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            i4 = (num != null ? num.intValue() : 0) - 1;
        } catch (Exception unused) {
            i4 = -1;
        }
        int i5 = i4 >= 0 ? cVar.l()[i4] : -1;
        d dVar = e.f9485b;
        d dVar2 = e.f9484a;
        if (dVar == null) {
            try {
                d dVar3 = new d(Class.class.getDeclaredMethod("getModule", new Class[0]), getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", new Class[0]), getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", new Class[0]));
                e.f9485b = dVar3;
                dVar = dVar3;
            } catch (Exception unused2) {
                e.f9485b = dVar2;
                dVar = dVar2;
            }
        }
        if (dVar != dVar2) {
            Method method = dVar.f9481a;
            Object invoke = method != null ? method.invoke(getClass(), new Object[0]) : null;
            if (invoke != null) {
                Method method2 = dVar.f9482b;
                Object invoke2 = method2 != null ? method2.invoke(invoke, new Object[0]) : null;
                if (invoke2 != null) {
                    Method method3 = dVar.f9483c;
                    Object invoke3 = method3 != null ? method3.invoke(invoke2, new Object[0]) : null;
                    if (invoke3 instanceof String) {
                        str2 = invoke3;
                    }
                }
            }
        }
        if (str2 == null) {
            str = cVar.c();
        } else {
            str = str2 + '/' + cVar.c();
        }
        return new StackTraceElement(str, cVar.m(), cVar.f(), i5);
    }

    public abstract Object invokeSuspend(Object obj);

    public void releaseIntercepted() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.c
    public final void resumeWith(Object obj) {
        while (true) {
            BaseContinuationImpl baseContinuationImpl = this;
            c cVar = baseContinuationImpl.completion;
            h.b(cVar);
            try {
                obj = baseContinuationImpl.invokeSuspend(obj);
                if (obj == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return;
                }
            } catch (Throwable th) {
                obj = e3.d.a(th);
            }
            baseContinuationImpl.releaseIntercepted();
            if (!(cVar instanceof BaseContinuationImpl)) {
                cVar.resumeWith(obj);
                return;
            }
            this = cVar;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Continuation at ");
        Object stackTraceElement = getStackTraceElement();
        if (stackTraceElement == null) {
            stackTraceElement = getClass().getName();
        }
        sb.append(stackTraceElement);
        return sb.toString();
    }

    public c create(Object obj, c completion) {
        h.e(completion, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }
}
