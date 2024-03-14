package androidx.recyclerview.widget;
/* loaded from: classes.dex */
public final class A0 {

    /* renamed from: a  reason: collision with root package name */
    public int f3758a = -1;

    /* renamed from: b  reason: collision with root package name */
    public int f3759b = 0;

    /* renamed from: c  reason: collision with root package name */
    public int f3760c = 0;

    /* renamed from: d  reason: collision with root package name */
    public int f3761d = 1;

    /* renamed from: e  reason: collision with root package name */
    public int f3762e = 0;

    /* renamed from: f  reason: collision with root package name */
    public boolean f3763f = false;

    /* renamed from: g  reason: collision with root package name */
    public boolean f3764g = false;

    /* renamed from: h  reason: collision with root package name */
    public boolean f3765h = false;

    /* renamed from: i  reason: collision with root package name */
    public boolean f3766i = false;

    /* renamed from: j  reason: collision with root package name */
    public boolean f3767j = false;

    /* renamed from: k  reason: collision with root package name */
    public boolean f3768k = false;

    /* renamed from: l  reason: collision with root package name */
    public int f3769l;

    /* renamed from: m  reason: collision with root package name */
    public long f3770m;

    /* renamed from: n  reason: collision with root package name */
    public int f3771n;

    /* renamed from: o  reason: collision with root package name */
    public int f3772o;

    public final void a(int i4) {
        if ((this.f3761d & i4) != 0) {
            return;
        }
        throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i4) + " but it is " + Integer.toBinaryString(this.f3761d));
    }

    public final int b() {
        return this.f3764g ? this.f3759b - this.f3760c : this.f3762e;
    }

    public final String toString() {
        return "State{mTargetPosition=" + this.f3758a + ", mData=null, mItemCount=" + this.f3762e + ", mIsMeasuring=" + this.f3766i + ", mPreviousLayoutItemCount=" + this.f3759b + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f3760c + ", mStructureChanged=" + this.f3763f + ", mInPreLayout=" + this.f3764g + ", mRunSimpleAnimations=" + this.f3767j + ", mRunPredictiveAnimations=" + this.f3768k + '}';
    }
}
