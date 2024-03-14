package androidx.fragment.app;

import androidx.lifecycle.Lifecycle$State;
/* loaded from: classes.dex */
public final class B0 {

    /* renamed from: a  reason: collision with root package name */
    public int f3234a;

    /* renamed from: b  reason: collision with root package name */
    public K f3235b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f3236c;

    /* renamed from: d  reason: collision with root package name */
    public int f3237d;

    /* renamed from: e  reason: collision with root package name */
    public int f3238e;

    /* renamed from: f  reason: collision with root package name */
    public int f3239f;

    /* renamed from: g  reason: collision with root package name */
    public int f3240g;

    /* renamed from: h  reason: collision with root package name */
    public Lifecycle$State f3241h;

    /* renamed from: i  reason: collision with root package name */
    public Lifecycle$State f3242i;

    public B0() {
    }

    public B0(K k4, int i4) {
        this.f3234a = i4;
        this.f3235b = k4;
        this.f3236c = false;
        Lifecycle$State lifecycle$State = Lifecycle$State.RESUMED;
        this.f3241h = lifecycle$State;
        this.f3242i = lifecycle$State;
    }

    public B0(int i4, K k4) {
        this.f3234a = i4;
        this.f3235b = k4;
        this.f3236c = true;
        Lifecycle$State lifecycle$State = Lifecycle$State.RESUMED;
        this.f3241h = lifecycle$State;
        this.f3242i = lifecycle$State;
    }
}
