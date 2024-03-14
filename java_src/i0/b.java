package I0;

import com.android.launcher3.config.FeatureFlags;
import java.util.function.ToIntFunction;
/* loaded from: classes.dex */
public final /* synthetic */ class b implements ToIntFunction {
    @Override // java.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        int i4;
        i4 = ((FeatureFlags.IntFlag) obj).mCurrentValue;
        return i4;
    }
}
