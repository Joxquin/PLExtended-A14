package io.grpc.internal;

import java.util.Collection;
import java.util.HashSet;
/* renamed from: io.grpc.internal.r1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1045r1 {

    /* renamed from: a  reason: collision with root package name */
    public final Object f10247a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public Collection f10248b = new HashSet();

    /* renamed from: c  reason: collision with root package name */
    public X2.L0 f10249c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C1048s1 f10250d;

    public C1045r1(C1048s1 c1048s1) {
        this.f10250d = c1048s1;
    }

    public final void a(X2.L0 l02) {
        synchronized (this.f10247a) {
            if (this.f10249c != null) {
                return;
            }
            this.f10249c = l02;
            boolean isEmpty = this.f10248b.isEmpty();
            if (isEmpty) {
                this.f10250d.f10299I.f(l02);
            }
        }
    }
}
