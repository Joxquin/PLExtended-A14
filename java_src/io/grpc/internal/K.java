package io.grpc.internal;

import X2.AbstractC0121j;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class K extends AbstractC0121j {

    /* renamed from: a  reason: collision with root package name */
    public final AbstractC0121j f9924a;

    /* renamed from: b  reason: collision with root package name */
    public volatile boolean f9925b;

    /* renamed from: c  reason: collision with root package name */
    public List f9926c = new ArrayList();

    public K(AbstractC0121j abstractC0121j) {
        this.f9924a = abstractC0121j;
    }

    @Override // X2.AbstractC0121j
    public final void a(X2.L0 l02, X2.r0 r0Var) {
        e(new D(this, l02, r0Var, 1));
    }

    @Override // X2.AbstractC0121j
    public final void b(X2.r0 r0Var) {
        if (this.f9925b) {
            this.f9924a.b(r0Var);
        } else {
            e(new E(3, this, r0Var));
        }
    }

    @Override // X2.AbstractC0121j
    public final void c(Object obj) {
        if (this.f9925b) {
            this.f9924a.c(obj);
        } else {
            e(new E(4, this, obj));
        }
    }

    @Override // X2.AbstractC0121j
    public final void d() {
        if (this.f9925b) {
            this.f9924a.d();
        } else {
            e(new H(1, this));
        }
    }

    public final void e(Runnable runnable) {
        synchronized (this) {
            if (this.f9925b) {
                runnable.run();
            } else {
                this.f9926c.add(runnable);
            }
        }
    }
}
