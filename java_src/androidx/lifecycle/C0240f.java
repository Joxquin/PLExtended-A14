package androidx.lifecycle;
/* renamed from: androidx.lifecycle.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0240f {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f3610a;

    static {
        int[] iArr = new int[Lifecycle$Event.values().length];
        try {
            iArr[Lifecycle$Event.ON_CREATE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[Lifecycle$Event.ON_START.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[Lifecycle$Event.ON_RESUME.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[Lifecycle$Event.ON_PAUSE.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[Lifecycle$Event.ON_STOP.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr[Lifecycle$Event.ON_DESTROY.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr[Lifecycle$Event.ON_ANY.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        f3610a = iArr;
    }
}
