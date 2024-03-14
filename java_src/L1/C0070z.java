package L1;

import android.util.FloatProperty;
/* renamed from: L1.z  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0070z extends FloatProperty {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f1301a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0070z(String str, int i4) {
        super(str);
        this.f1301a = i4;
    }

    @Override // android.util.Property
    public final Float get(Object obj) {
        int i4 = this.f1301a;
        switch (i4) {
            case 0:
                B b4 = (B) obj;
                switch (i4) {
                    case 0:
                        return Float.valueOf(b4.f1053n);
                    default:
                        return Float.valueOf(b4.f1054o);
                }
            default:
                B b5 = (B) obj;
                switch (i4) {
                    case 0:
                        return Float.valueOf(b5.f1053n);
                    default:
                        return Float.valueOf(b5.f1054o);
                }
        }
    }

    @Override // android.util.FloatProperty
    public final void setValue(Object obj, float f4) {
        int i4 = this.f1301a;
        switch (i4) {
            case 0:
                B b4 = (B) obj;
                switch (i4) {
                    case 0:
                        b4.f1053n = f4;
                        b4.invalidate();
                        return;
                    default:
                        b4.f1054o = f4;
                        b4.invalidate();
                        return;
                }
            default:
                B b5 = (B) obj;
                switch (i4) {
                    case 0:
                        b5.f1053n = f4;
                        b5.invalidate();
                        return;
                    default:
                        b5.f1054o = f4;
                        b5.invalidate();
                        return;
                }
        }
    }
}
