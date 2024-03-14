package X2;

import java.util.Comparator;
/* loaded from: classes.dex */
public final class G0 implements Comparator {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ H0 f2108a;

    public G0(H0 h02) {
        this.f2108a = h02;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int b4 = this.f2108a.b(obj) - this.f2108a.b(obj2);
        return b4 != 0 ? b4 : obj.getClass().getName().compareTo(obj2.getClass().getName());
    }
}
