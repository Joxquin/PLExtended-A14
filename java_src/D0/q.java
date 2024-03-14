package D0;

import com.android.launcher3.allapps.FloatingHeaderRow;
import java.util.function.ToIntFunction;
/* loaded from: classes.dex */
public final /* synthetic */ class q implements ToIntFunction {
    @Override // java.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        return ((FloatingHeaderRow) obj).getExpectedHeight();
    }
}
