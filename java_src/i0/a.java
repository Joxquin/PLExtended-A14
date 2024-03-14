package I0;

import com.android.launcher3.config.FeatureFlags;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        boolean z4;
        z4 = ((FeatureFlags.BooleanFlag) obj).mCurrentValue;
        return z4;
    }
}
