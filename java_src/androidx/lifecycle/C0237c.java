package androidx.lifecycle;

import java.lang.reflect.Method;
@Deprecated
/* renamed from: androidx.lifecycle.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0237c {

    /* renamed from: a  reason: collision with root package name */
    public final int f3605a;

    /* renamed from: b  reason: collision with root package name */
    public final Method f3606b;

    public C0237c(int i4, Method method) {
        this.f3605a = i4;
        this.f3606b = method;
        method.setAccessible(true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0237c) {
            C0237c c0237c = (C0237c) obj;
            return this.f3605a == c0237c.f3605a && this.f3606b.getName().equals(c0237c.f3606b.getName());
        }
        return false;
    }

    public final int hashCode() {
        return this.f3606b.getName().hashCode() + (this.f3605a * 31);
    }
}
