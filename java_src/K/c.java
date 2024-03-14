package K;
/* loaded from: classes.dex */
public final class c implements d {

    /* renamed from: a  reason: collision with root package name */
    public static final c f871a = new c();

    @Override // K.d
    public final int a(CharSequence charSequence, int i4) {
        int i5 = i4 + 0;
        int i6 = 2;
        for (int i7 = 0; i7 < i5 && i6 == 2; i7++) {
            byte directionality = Character.getDirectionality(charSequence.charAt(i7));
            f fVar = g.f874a;
            if (directionality != 0) {
                if (directionality != 1 && directionality != 2) {
                    switch (directionality) {
                        case 14:
                        case 15:
                            break;
                        case 16:
                        case 17:
                            break;
                        default:
                            i6 = 2;
                            break;
                    }
                }
                i6 = 0;
            }
            i6 = 1;
        }
        return i6;
    }
}
