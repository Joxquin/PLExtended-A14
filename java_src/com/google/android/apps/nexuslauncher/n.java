package com.google.android.apps.nexuslauncher;
/* loaded from: classes.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public final o f7484a;

    /* renamed from: b  reason: collision with root package name */
    public final o f7485b;

    public n(o oVar, o oVar2) {
        this.f7484a = oVar;
        this.f7485b = oVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof n) {
            n nVar = (n) obj;
            return kotlin.jvm.internal.h.a(this.f7484a, nVar.f7484a) && kotlin.jvm.internal.h.a(this.f7485b, nVar.f7485b);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f7484a.hashCode() * 31;
        o oVar = this.f7485b;
        return hashCode + (oVar == null ? 0 : oVar.hashCode());
    }

    public final String toString() {
        return "SearchTarget(search=" + this.f7484a + ", voice=" + this.f7485b + ")";
    }
}
