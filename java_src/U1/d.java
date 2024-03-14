package U1;

import android.view.InputEvent;
import android.view.MotionEvent;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.quickstep.util.ActivityInitListener;
import com.android.systemui.shared.system.InputChannelCompat;
import com.google.android.apps.nexuslauncher.overlay.SwipeTransition;
/* loaded from: classes.dex */
public final class d implements InputChannelCompat.InputEventListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ k f1745a;

    public d(k kVar) {
        this.f1745a = kVar;
    }

    @Override // com.android.systemui.shared.system.InputChannelCompat.InputEventListener
    public final void onInputEvent(InputEvent e4) {
        kotlin.jvm.internal.h.d(e4, "e");
        MainThreadInitializedObject mainThreadInitializedObject = k.f1754k;
        k kVar = this.f1745a;
        kVar.getClass();
        if (e4 instanceof MotionEvent) {
            SwipeTransition swipeTransition = kVar.f1761j;
            if (swipeTransition != null) {
                swipeTransition.onMotionEvent((MotionEvent) e4);
                return;
            }
            MotionEvent motionEvent = (MotionEvent) e4;
            if (motionEvent.getAction() == 0) {
                SwipeTransition c4 = kVar.c(false, Utilities.isRtl(kVar.f1755d.getResources()) ? SwipeTransition.INVERSE_MATRIX : null);
                if (c4 != null) {
                    ActivityInitListener activityInitListener = new ActivityInitListener(new i(c4), Launcher.ACTIVITY_TRACKER);
                    activityInitListener.register();
                    c4.getEndCallbacks().add(new h(2, activityInitListener));
                    c4.onMotionEvent(motionEvent);
                }
            }
        }
    }
}
