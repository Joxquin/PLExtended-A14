package P0;

import android.app.Person;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return ((Person) obj).getKey() != null;
    }
}
