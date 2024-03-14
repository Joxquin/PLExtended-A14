package C2;
/* loaded from: classes.dex */
public final class e extends d {

    /* renamed from: a  reason: collision with root package name */
    public final float f135a = -1.0f;

    @Override // C2.d
    public final void a(float f4, float f5, x xVar) {
        xVar.e(f5 * f4, 180.0f, 90.0f);
        double d4 = f5;
        double d5 = f4;
        xVar.d((float) (Math.sin(Math.toRadians(90.0f)) * d4 * d5), (float) (Math.sin(Math.toRadians(0.0f)) * d4 * d5));
    }
}
