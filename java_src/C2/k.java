package C2;

import android.graphics.RectF;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class k implements c {

    /* renamed from: a  reason: collision with root package name */
    public final float f183a;

    public k(float f4) {
        this.f183a = f4;
    }

    @Override // C2.c
    public final float a(RectF rectF) {
        return rectF.height() * this.f183a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof k) && this.f183a == ((k) obj).f183a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f183a)});
    }
}
