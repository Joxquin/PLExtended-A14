package com.google.android.material.datepicker;
/* renamed from: com.google.android.material.datepicker.k  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0736k implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f7945d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ MaterialCalendar f7946e;

    public RunnableC0736k(MaterialCalendar materialCalendar, int i4) {
        this.f7946e = materialCalendar;
        this.f7945d = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7946e.f7878l.smoothScrollToPosition(this.f7945d);
    }
}
