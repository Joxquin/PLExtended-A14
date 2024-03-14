package O1;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ViewTreeObserver;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.views.BaseDragLayer;
/* loaded from: classes.dex */
public final class j extends BaseDragLayer implements ViewTreeObserver.OnDrawListener {

    /* renamed from: d  reason: collision with root package name */
    public boolean f1453d;

    public j(Context context) {
        super(context, null, 1);
        setClipChildren(false);
        recreateControllers();
        getViewTreeObserver().addOnDrawListener(this);
    }

    public static /* synthetic */ void b(j jVar) {
        jVar.getViewTreeObserver().removeOnDrawListener(jVar);
        ((l) jVar.mActivity).f1460i.show();
    }

    @Override // com.android.launcher3.views.BaseDragLayer, android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        TestLogging.recordMotionEvent("Main", "Touch event", motionEvent);
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        if (this.f1453d) {
            return;
        }
        this.f1453d = true;
        Executors.MAIN_EXECUTOR.post(new RunnableC0075e(1, this));
    }

    @Override // com.android.launcher3.views.BaseDragLayer
    public final void recreateControllers() {
        this.mControllers = new TouchController[0];
    }
}
