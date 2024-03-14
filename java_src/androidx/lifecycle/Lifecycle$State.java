package androidx.lifecycle;
/* loaded from: classes.dex */
public enum Lifecycle$State {
    DESTROYED,
    INITIALIZED,
    CREATED,
    STARTED,
    RESUMED;

    public final boolean a(Lifecycle$State lifecycle$State) {
        return compareTo(lifecycle$State) >= 0;
    }
}
