package b1;

import android.animation.AnimatorSet;
import com.android.launcher3.LauncherState;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.quickstep.TouchInteractionService;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class f implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4190a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ QuickstepLauncher f4191b;

    public /* synthetic */ f(QuickstepLauncher quickstepLauncher, int i4) {
        this.f4190a = i4;
        this.f4191b = quickstepLauncher;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f4190a) {
            case 0:
                QuickstepLauncher quickstepLauncher = this.f4191b;
                quickstepLauncher.getClass();
                if (((Boolean) obj).booleanValue()) {
                    quickstepLauncher.getStateManager().moveToRestState();
                    return;
                } else {
                    quickstepLauncher.getStateManager().goToState(LauncherState.OVERVIEW);
                    return;
                }
            case 1:
                ((AnimatorSet) obj).play(r1.mSplitSelectStateController.getSplitAnimationController().createPlaceholderDismissAnim(this.f4191b));
                return;
            case 2:
                TouchInteractionService.TISBinder tISBinder = (TouchInteractionService.TISBinder) obj;
                QuickstepLauncher.t(this.f4191b);
                return;
            default:
                Boolean bool = (Boolean) obj;
                this.f4191b.mSplitSelectStateController.resetState();
                return;
        }
    }
}
