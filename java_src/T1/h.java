package T1;

import android.app.smartspace.SmartspaceTarget;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class h implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return ((SmartspaceTarget) obj).getFeatureType() != 34;
    }
}
