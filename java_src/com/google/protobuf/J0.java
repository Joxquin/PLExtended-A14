package com.google.protobuf;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
public final class J0 implements Iterator {

    /* renamed from: d  reason: collision with root package name */
    public int f8537d = -1;

    /* renamed from: e  reason: collision with root package name */
    public boolean f8538e;

    /* renamed from: f  reason: collision with root package name */
    public Iterator f8539f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ L0 f8540g;

    public J0(L0 l02) {
        this.f8540g = l02;
    }

    public final Iterator a() {
        if (this.f8539f == null) {
            this.f8539f = this.f8540g.f8559f.entrySet().iterator();
        }
        return this.f8539f;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f8537d + 1 >= this.f8540g.f8558e.size()) {
            return !this.f8540g.f8559f.isEmpty() && a().hasNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        this.f8538e = true;
        int i4 = this.f8537d + 1;
        this.f8537d = i4;
        return i4 < this.f8540g.f8558e.size() ? (Map.Entry) this.f8540g.f8558e.get(this.f8537d) : (Map.Entry) a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f8538e) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.f8538e = false;
        L0 l02 = this.f8540g;
        int i4 = L0.f8556j;
        l02.c();
        if (this.f8537d >= this.f8540g.f8558e.size()) {
            a().remove();
            return;
        }
        L0 l03 = this.f8540g;
        int i5 = this.f8537d;
        this.f8537d = i5 - 1;
        l03.j(i5);
    }
}
