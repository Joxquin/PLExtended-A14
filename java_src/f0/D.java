package f0;

import androidx.slice.SliceItem;
import d0.C0797e;
import q.C1355f;
/* loaded from: classes.dex */
public final class D {

    /* renamed from: a  reason: collision with root package name */
    public final G f9053a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9054b;

    /* renamed from: c  reason: collision with root package name */
    public final long f9055c;

    public D(G g4, B b4) {
        this.f9053a = g4;
        SliceItem sliceItem = g4.f9085a;
        this.f9054b = "message".equals(sliceItem.f4058c) ? C0797e.i(sliceItem, null, "source") != null ? 4 : 5 : sliceItem.i("horizontal") ? 3 : !sliceItem.i("list_item") ? 2 : 1;
        SliceItem sliceItem2 = g4.f9085a;
        b4.getClass();
        String valueOf = ("slice".equals(sliceItem2.f4057b) || "action".equals(sliceItem2.f4057b)) ? String.valueOf(sliceItem2.g().b().size()) : sliceItem2.toString();
        C1355f c1355f = b4.f9049b;
        if (!c1355f.containsKey(valueOf)) {
            long j4 = b4.f9048a;
            b4.f9048a = 1 + j4;
            c1355f.put(valueOf, Long.valueOf(j4));
        }
        long longValue = ((Long) c1355f.get(valueOf)).longValue();
        C1355f c1355f2 = b4.f9050c;
        Integer num = (Integer) c1355f2.get(valueOf);
        int intValue = num != null ? num.intValue() : 0;
        c1355f2.put(valueOf, Integer.valueOf(intValue + 1));
        this.f9055c = longValue + (intValue * 10000);
    }
}
