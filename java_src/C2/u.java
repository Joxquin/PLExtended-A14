package C2;

import android.graphics.Matrix;
import android.graphics.Path;
/* loaded from: classes.dex */
public final class u extends v {

    /* renamed from: b  reason: collision with root package name */
    public float f235b;

    /* renamed from: c  reason: collision with root package name */
    public float f236c;

    @Override // C2.v
    public final void a(Matrix matrix, Path path) {
        Matrix matrix2 = this.f237a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        path.lineTo(this.f235b, this.f236c);
        path.transform(matrix);
    }
}
