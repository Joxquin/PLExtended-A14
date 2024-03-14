package C2;

import android.graphics.RectF;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class b implements c {

    /* renamed from: a  reason: collision with root package name */
    public final c f133a;

    /* renamed from: b  reason: collision with root package name */
    public final float f134b;

    public b(float f4, c cVar) {
        while (cVar instanceof b) {
            cVar = ((b) cVar).f133a;
            f4 += ((b) cVar).f134b;
        }
        this.f133a = cVar;
        this.f134b = f4;
    }

    @Override // C2.c
    public final float a(RectF rectF) {
        return Math.max(0.0f, this.f133a.a(rectF) + this.f134b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            return this.f133a.equals(bVar.f133a) && this.f134b == bVar.f134b;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f133a, Float.valueOf(this.f134b)});
    }
}
