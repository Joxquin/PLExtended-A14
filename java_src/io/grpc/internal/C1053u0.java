package io.grpc.internal;

import java.util.ArrayList;
/* renamed from: io.grpc.internal.u0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1053u0 {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f10381a = new ArrayList();

    public final void a(Object obj, String str) {
        ArrayList arrayList = this.f10381a;
        arrayList.add(str + "=" + obj);
    }

    public final String toString() {
        return this.f10381a.toString();
    }
}
