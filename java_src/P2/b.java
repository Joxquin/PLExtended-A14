package P2;
/* loaded from: classes.dex */
public final class b extends d {

    /* renamed from: d  reason: collision with root package name */
    public final char[] f1574d;

    public b(a aVar) {
        super(aVar, null);
        this.f1574d = new char[512];
        char[] cArr = aVar.f1568b;
        if (!(cArr.length == 16)) {
            throw new IllegalArgumentException();
        }
        for (int i4 = 0; i4 < 256; i4++) {
            char[] cArr2 = this.f1574d;
            cArr2[i4] = cArr[i4 >>> 4];
            cArr2[i4 | 256] = cArr[i4 & 15];
        }
    }
}
