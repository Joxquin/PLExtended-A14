package U1;

import com.android.launcher3.Launcher;
import com.google.android.apps.nexuslauncher.overlay.SwipeTransition;
import java.util.function.BiPredicate;
/* loaded from: classes.dex */
public final class i implements BiPredicate {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SwipeTransition f1752a;

    public i(SwipeTransition swipeTransition) {
        this.f1752a = swipeTransition;
    }

    @Override // java.util.function.BiPredicate
    public final boolean test(Object obj, Object obj2) {
        Boolean bool = (Boolean) obj2;
        this.f1752a.setCallbacks(((Launcher) obj).getWorkspace());
        return true;
    }
}
