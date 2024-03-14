package Y2;

import java.io.InputStream;
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final InputStream f2334a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f2335b;

    /* renamed from: c  reason: collision with root package name */
    public final int f2336c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f2337d;

    public g(l lVar, byte[] bArr, int i4, boolean z4) {
        this.f2334a = lVar;
        this.f2335b = bArr;
        this.f2336c = i4;
        this.f2337d = z4;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TransactionData[");
        sb.append(this.f2336c);
        sb.append("b ");
        sb.append(this.f2334a != null ? "stream" : "array");
        sb.append(this.f2337d ? "(last)]" : "]");
        return sb.toString();
    }
}
