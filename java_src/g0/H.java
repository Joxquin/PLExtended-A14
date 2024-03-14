package g0;

import android.graphics.Rect;
import android.util.Property;
import android.view.View;
import androidx.core.view.C0188z;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class H extends Property {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f9381a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ H(Class cls, String str, int i4) {
        super(cls, str);
        this.f9381a = i4;
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        switch (this.f9381a) {
            case 0:
                return Float.valueOf(((View) obj).getTransitionAlpha());
            default:
                WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
                return C0188z.a((View) obj);
        }
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        switch (this.f9381a) {
            case 0:
                ((View) obj).setTransitionAlpha(((Float) obj2).floatValue());
                return;
            default:
                WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
                C0188z.b((View) obj, (Rect) obj2);
                return;
        }
    }
}
