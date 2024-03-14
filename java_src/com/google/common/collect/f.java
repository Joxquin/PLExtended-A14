package com.google.common.collect;

import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public final class f extends h {

    /* renamed from: d  reason: collision with root package name */
    public boolean f8469d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f8470e;

    public f(Object obj) {
        this.f8470e = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f8469d;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f8469d) {
            throw new NoSuchElementException();
        }
        this.f8469d = true;
        return this.f8470e;
    }
}
