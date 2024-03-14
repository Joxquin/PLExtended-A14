package k;
/* loaded from: classes.dex */
public final class J0 {

    /* renamed from: a  reason: collision with root package name */
    public int f10783a = 0;

    /* renamed from: b  reason: collision with root package name */
    public int f10784b = 0;

    /* renamed from: c  reason: collision with root package name */
    public int f10785c = Integer.MIN_VALUE;

    /* renamed from: d  reason: collision with root package name */
    public int f10786d = Integer.MIN_VALUE;

    /* renamed from: e  reason: collision with root package name */
    public int f10787e = 0;

    /* renamed from: f  reason: collision with root package name */
    public int f10788f = 0;

    /* renamed from: g  reason: collision with root package name */
    public boolean f10789g = false;

    /* renamed from: h  reason: collision with root package name */
    public boolean f10790h = false;

    public final void a(int i4, int i5) {
        this.f10785c = i4;
        this.f10786d = i5;
        this.f10790h = true;
        if (this.f10789g) {
            if (i5 != Integer.MIN_VALUE) {
                this.f10783a = i5;
            }
            if (i4 != Integer.MIN_VALUE) {
                this.f10784b = i4;
                return;
            }
            return;
        }
        if (i4 != Integer.MIN_VALUE) {
            this.f10783a = i4;
        }
        if (i5 != Integer.MIN_VALUE) {
            this.f10784b = i5;
        }
    }
}
