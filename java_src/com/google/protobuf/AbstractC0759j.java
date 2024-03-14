package com.google.protobuf;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: com.google.protobuf.j  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0759j implements Iterator {
    @Override // java.util.Iterator
    public final Object next() {
        C0757i c0757i = (C0757i) this;
        int i4 = c0757i.f8647d;
        if (i4 < c0757i.f8648e) {
            c0757i.f8647d = i4 + 1;
            return Byte.valueOf(c0757i.f8649f.l(i4));
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
