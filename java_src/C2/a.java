package C2;

import android.graphics.RectF;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class a implements c {

    /* renamed from: a  reason: collision with root package name */
    public final float f132a;

    public a(float f4) {
        this.f132a = f4;
    }

    @Override // C2.c
    public final float a(RectF rectF) {
        return this.f132a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && this.f132a == ((a) obj).f132a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f132a)});
    }
}
