package L;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public final Object[] f1018a;

    /* renamed from: b  reason: collision with root package name */
    public int f1019b;

    public d(int i4) {
        if (i4 <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.f1018a = new Object[i4];
    }

    public Object a() {
        int i4 = this.f1019b;
        if (i4 > 0) {
            int i5 = i4 - 1;
            Object[] objArr = this.f1018a;
            Object obj = objArr[i5];
            objArr[i5] = null;
            this.f1019b = i4 - 1;
            return obj;
        }
        return null;
    }

    public boolean b(Object obj) {
        int i4;
        Object[] objArr;
        boolean z4;
        int i5 = 0;
        while (true) {
            i4 = this.f1019b;
            objArr = this.f1018a;
            if (i5 >= i4) {
                z4 = false;
                break;
            } else if (objArr[i5] == obj) {
                z4 = true;
                break;
            } else {
                i5++;
            }
        }
        if (z4) {
            throw new IllegalStateException("Already in the pool!");
        }
        if (i4 < objArr.length) {
            objArr[i4] = obj;
            this.f1019b = i4 + 1;
            return true;
        }
        return false;
    }
}
