package M2;

import android.graphics.drawable.Drawable;
import java.util.Objects;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return Objects.nonNull((Drawable) obj);
    }
}
