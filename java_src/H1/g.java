package H1;

import android.window.TransitionInfo;
import com.android.systemui.shared.system.QuickStepContract;
/* loaded from: classes.dex */
public final class g {
    public static boolean a(TransitionInfo.Change change) {
        return (change.getTaskInfo() == null && !change.hasFlags(2) && !change.hasFlags(512)) && change.hasFlags((int) QuickStepContract.SYSUI_STATE_BACK_DISABLED);
    }

    public static int b(TransitionInfo.Change change, TransitionInfo transitionInfo) {
        int findRootIndex = transitionInfo.findRootIndex(change.getEndDisplayId());
        if (findRootIndex >= 0) {
            return findRootIndex;
        }
        int findRootIndex2 = transitionInfo.findRootIndex(change.getStartDisplayId());
        if (findRootIndex2 >= 0) {
            return findRootIndex2;
        }
        return 0;
    }
}
