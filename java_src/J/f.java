package J;

import android.util.Base64;
import java.util.List;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final String f582a;

    /* renamed from: b  reason: collision with root package name */
    public final String f583b;

    /* renamed from: c  reason: collision with root package name */
    public final String f584c;

    /* renamed from: d  reason: collision with root package name */
    public final List f585d;

    /* renamed from: e  reason: collision with root package name */
    public final String f586e;

    public f(String str, String str2, String str3, List list) {
        this.f582a = str;
        this.f583b = str2;
        this.f584c = str3;
        list.getClass();
        this.f585d = list;
        this.f586e = str + "-" + str2 + "-" + str3;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f582a + ", mProviderPackage: " + this.f583b + ", mQuery: " + this.f584c + ", mCertificates:");
        int i4 = 0;
        while (true) {
            List list = this.f585d;
            if (i4 >= list.size()) {
                sb.append("}mCertificatesArray: 0");
                return sb.toString();
            }
            sb.append(" [");
            List list2 = (List) list.get(i4);
            for (int i5 = 0; i5 < list2.size(); i5++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString((byte[]) list2.get(i5), 0));
                sb.append("\"");
            }
            sb.append(" ]");
            i4++;
        }
    }
}
