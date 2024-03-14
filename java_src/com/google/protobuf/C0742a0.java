package com.google.protobuf;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.protobuf.a0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0742a0 extends AbstractC0746c0 {

    /* renamed from: c  reason: collision with root package name */
    public static final Class f8623c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    /* JADX WARN: Multi-variable type inference failed */
    public static List d(int i4, long j4, Object obj) {
        Y y4;
        List list = (List) X0.o(j4, obj);
        if (list.isEmpty()) {
            List y5 = list instanceof Z ? new Y(i4) : ((list instanceof InterfaceC0789y0) && (list instanceof S)) ? ((S) list).b(i4) : new ArrayList(i4);
            X0.x(j4, obj, y5);
            return y5;
        }
        if (f8623c.isAssignableFrom(list.getClass())) {
            ArrayList arrayList = new ArrayList(list.size() + i4);
            arrayList.addAll(list);
            X0.x(j4, obj, arrayList);
            y4 = arrayList;
        } else if (!(list instanceof T0)) {
            if ((list instanceof InterfaceC0789y0) && (list instanceof S)) {
                S s4 = (S) list;
                if (s4.g()) {
                    return list;
                }
                S b4 = s4.b(list.size() + i4);
                X0.x(j4, obj, b4);
                return b4;
            }
            return list;
        } else {
            Y y6 = new Y(list.size() + i4);
            y6.addAll((T0) list);
            X0.x(j4, obj, y6);
            y4 = y6;
        }
        return y4;
    }

    @Override // com.google.protobuf.AbstractC0746c0
    public final void a(long j4, Object obj) {
        Object unmodifiableList;
        List list = (List) X0.o(j4, obj);
        if (list instanceof Z) {
            unmodifiableList = ((Z) list).d();
        } else {
            if (f8623c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof InterfaceC0789y0) && (list instanceof S)) {
                S s4 = (S) list;
                if (s4.g()) {
                    s4.a();
                    return;
                }
                return;
            }
            unmodifiableList = Collections.unmodifiableList(list);
        }
        X0.x(j4, obj, unmodifiableList);
    }

    @Override // com.google.protobuf.AbstractC0746c0
    public final void b(long j4, Object obj, Object obj2) {
        List list = (List) X0.o(j4, obj2);
        List d4 = d(list.size(), j4, obj);
        int size = d4.size();
        int size2 = list.size();
        if (size > 0 && size2 > 0) {
            d4.addAll(list);
        }
        if (size > 0) {
            list = d4;
        }
        X0.x(j4, obj, list);
    }

    @Override // com.google.protobuf.AbstractC0746c0
    public final List c(long j4, Object obj) {
        return d(10, j4, obj);
    }
}
