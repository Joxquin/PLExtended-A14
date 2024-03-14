package com.google.common.collect;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final Object f8463a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f8464b;

    /* renamed from: c  reason: collision with root package name */
    public final Object f8465c;

    public d(Object obj, Object obj2, Object obj3) {
        this.f8463a = obj;
        this.f8464b = obj2;
        this.f8465c = obj3;
    }

    public final IllegalArgumentException a() {
        StringBuilder sb = new StringBuilder("Multiple entries with same key: ");
        Object obj = this.f8463a;
        sb.append(obj);
        sb.append("=");
        sb.append(this.f8464b);
        sb.append(" and ");
        sb.append(obj);
        sb.append("=");
        sb.append(this.f8465c);
        return new IllegalArgumentException(sb.toString());
    }
}
