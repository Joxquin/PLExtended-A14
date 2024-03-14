package com.google.protobuf;

import java.util.List;
/* renamed from: com.google.protobuf.b0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0744b0 extends AbstractC0746c0 {
    @Override // com.google.protobuf.AbstractC0746c0
    public final void a(long j4, Object obj) {
        ((S) X0.o(j4, obj)).a();
    }

    @Override // com.google.protobuf.AbstractC0746c0
    public final void b(long j4, Object obj, Object obj2) {
        S s4 = (S) X0.o(j4, obj);
        S s5 = (S) X0.o(j4, obj2);
        int size = s4.size();
        int size2 = s5.size();
        if (size > 0 && size2 > 0) {
            if (!s4.g()) {
                s4 = s4.b(size2 + size);
            }
            s4.addAll(s5);
        }
        if (size > 0) {
            s5 = s4;
        }
        X0.x(j4, obj, s5);
    }

    @Override // com.google.protobuf.AbstractC0746c0
    public final List c(long j4, Object obj) {
        S s4 = (S) X0.o(j4, obj);
        if (s4.g()) {
            return s4;
        }
        int size = s4.size();
        S b4 = s4.b(size == 0 ? 10 : size * 2);
        X0.x(j4, obj, b4);
        return b4;
    }
}
