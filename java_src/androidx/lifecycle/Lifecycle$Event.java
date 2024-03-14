package androidx.lifecycle;
/* loaded from: classes.dex */
public enum Lifecycle$Event {
    ON_CREATE,
    ON_START,
    ON_RESUME,
    ON_PAUSE,
    ON_STOP,
    ON_DESTROY,
    ON_ANY;
    
    public static final C0245k Companion = new C0245k();

    public final Lifecycle$State a() {
        switch (C0246l.f3611a[ordinal()]) {
            case 1:
            case 2:
                return Lifecycle$State.CREATED;
            case 3:
            case 4:
                return Lifecycle$State.STARTED;
            case 5:
                return Lifecycle$State.RESUMED;
            case 6:
                return Lifecycle$State.DESTROYED;
            default:
                throw new IllegalArgumentException(this + " has no target state");
        }
    }
}
