package W1;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.android.launcher3.Launcher;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.qsb.SearchDelegateView;
import com.google.android.apps.nexuslauncher.search.SearchConfigProto$TapTarget;
/* loaded from: classes.dex */
public final class o extends View.AccessibilityDelegate {
    @Override // android.view.View.AccessibilityDelegate
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        ActivityContext activityContext = (ActivityContext) ActivityContext.lookupContext(view.getContext());
        if (activityContext instanceof Launcher) {
            if (((Launcher) activityContext).getWorkspace().hasOverlay()) {
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.string.title_show_google_app, view.getContext().getText(R.string.title_show_google_app)));
            }
            if ((view instanceof SearchDelegateView) && ((SearchDelegateView) view).h()) {
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.string.action_show_doodle, view.getResources().getString(R.string.action_show_doodle)));
            }
        }
    }

    @Override // android.view.View.AccessibilityDelegate
    public final boolean performAccessibilityAction(View view, int i4, Bundle bundle) {
        if (i4 == R.string.title_show_google_app) {
            ActivityContext activityContext = (ActivityContext) ActivityContext.lookupContext(view.getContext());
            if (activityContext instanceof Launcher) {
                ((Launcher) activityContext).getOverlayManager().e();
                return true;
            }
        }
        if (i4 == R.string.action_show_doodle && (view instanceof p)) {
            ((p) view).b("", SearchConfigProto$TapTarget.LOGO);
            return true;
        }
        return super.performAccessibilityAction(view, i4, bundle);
    }
}
