package K;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: e  reason: collision with root package name */
    public static final byte[] f858e = new byte[1792];

    /* renamed from: a  reason: collision with root package name */
    public final CharSequence f859a;

    /* renamed from: b  reason: collision with root package name */
    public final int f860b;

    /* renamed from: c  reason: collision with root package name */
    public int f861c;

    /* renamed from: d  reason: collision with root package name */
    public char f862d;

    static {
        for (int i4 = 0; i4 < 1792; i4++) {
            f858e[i4] = Character.getDirectionality(i4);
        }
    }

    public a(CharSequence charSequence) {
        this.f859a = charSequence;
        this.f860b = charSequence.length();
    }

    public final byte a() {
        CharSequence charSequence = this.f859a;
        char charAt = charSequence.charAt(this.f861c - 1);
        this.f862d = charAt;
        if (Character.isLowSurrogate(charAt)) {
            int codePointBefore = Character.codePointBefore(charSequence, this.f861c);
            this.f861c -= Character.charCount(codePointBefore);
            return Character.getDirectionality(codePointBefore);
        }
        this.f861c--;
        char c4 = this.f862d;
        return c4 < 1792 ? f858e[c4] : Character.getDirectionality(c4);
    }
}
