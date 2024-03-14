package c1;

import android.content.pm.PackageInfo;
import android.util.Pair;
import com.android.launcher3.uioverrides.flags.DeveloperOptionsFragment;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Function {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4255a;

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f4255a) {
            case 0:
                int i4 = DeveloperOptionsFragment.f5241d;
                return ((PackageInfo) obj).packageName;
            default:
                int i5 = DeveloperOptionsFragment.f5241d;
                return (String) ((Pair) obj).first;
        }
    }
}
