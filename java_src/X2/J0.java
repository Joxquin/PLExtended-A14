package X2;

import io.grpc.Status$Code;
import java.util.List;
/* loaded from: classes.dex */
public final class J0 implements InterfaceC0136q0 {
    @Override // X2.InterfaceC0136q0
    /* renamed from: a */
    public final byte[] mo10a(Object obj) {
        return Status$Code.a(((L0) obj).f2137a);
    }

    @Override // X2.InterfaceC0136q0
    public final Object b(byte[] bArr) {
        int i4;
        byte b4;
        char c4 = 0;
        if (bArr.length == 1 && bArr[0] == 48) {
            return L0.f2126e;
        }
        int length = bArr.length;
        if (length != 1) {
            if (length == 2 && (b4 = bArr[0]) >= 48 && b4 <= 57) {
                i4 = 0 + ((b4 - 48) * 10);
                c4 = 1;
            }
            return L0.f2128g.f("Unknown code ".concat(new String(bArr, O2.e.f1510a)));
        }
        i4 = 0;
        byte b5 = bArr[c4];
        if (b5 >= 48 && b5 <= 57) {
            int i5 = (b5 - 48) + i4;
            List list = L0.f2125d;
            if (i5 < list.size()) {
                return (L0) list.get(i5);
            }
        }
        return L0.f2128g.f("Unknown code ".concat(new String(bArr, O2.e.f1510a)));
    }
}
